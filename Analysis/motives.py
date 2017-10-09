from music21 import *
import os

# Load corpus
# 	could change this to an environment variable to make it work with any of the Andalusi corpuses

class Song:
	def __init__(self, number, title, movementNumber, movement, duration, notes, tempo, index):
		self.number = number
		self.title = title
		self.movementNumber = movementNumber
		self.movement = movement
		self.duration = duration
		self.notes = notes
		self.tempo = tempo
		self.index = index

def getFileInfo( path ):
	"Collects song metadata from path"
	fileName = os.path.basename(path).split(" ", 1)
	movementInfo = os.path.dirname(path).split("/")[-2].split(" ", 1)
	return {'number': int(fileName[0]), 'title': fileName[1].split(".")[0], 'movementNumber': movementInfo[0], 'movement': movementInfo[1]}

def buildSongList( corpus ):
	"Builds a list of song objects"
	songs = []
	errors = []
	songIndex = 0
	for p in corpus.getPaths():
		fileInfo = getFileInfo(p)
		# check that it's not an improvisation
		if fileInfo['movement'] != "Misc":
			scoreStream = converter.parse(p).flat
			# get metronome mark
			sIter = scoreStream.iter
			mmFilter = stream.filters.ClassFilter('MetronomeMark')
			sIter.addFilter(mmFilter)
			metronomeMark = sIter[0] # no instances of multiple markings
			tempo = metronomeMark.number
			duration = scoreStream.duration.quarterLength
			notes = scoreStream
			for i, n in enumerate(notes):
				if (n.duration.quarterLength == 0 and "Note" in n.classes):
					errors.append({
						'number': fileInfo['number'],
						'index': i,
						'offset': n.offset,
						'songIndex': songIndex
					})
			s = Song(
				fileInfo['number'],
				fileInfo['title'],
				fileInfo['movementNumber'],
				fileInfo['movement'],
				duration,
				notes,
				tempo,
				songIndex
			)
			songIndex += 1
			songs.append(s)
	songs = fixErrors(songs, errors)
	songs.sort(key=lambda song: song.number)
	return songs

def fixErrors( songs, errors ):
	restsToDelete = []
	for e in errors:
		songIndex = e['songIndex']
		noteIndex = e['index']
		song = songs[songIndex]
		note = song.notes[noteIndex]
		nextNote = note.next()
		previousNote = song.notes[noteIndex-1]
		if song.movement == "Basit":
			note.duration.quarterLength = 0.125
			print(" - fixed error in song", song.number)
			if "Rest" in nextNote.classes:
				restsToDelete.append({ 'song': songIndex, 'note': noteIndex + 1 })
		elif song.movement == "al-Quddam":
			if (str(previousNote.duration.quarterLength) == "1/3" and note.duration.quarterLength == 0 and "Rest" in nextNote.classes):
				previousNote.duration.quarterLength = 0.375
				note.duration.quarterLength = 0.125
				restsToDelete.append({ 'song': songIndex, 'note': noteIndex + 1})
				print(" - fixed error in song", song.number)
			elif song.number == 110:
				# fix notes of duration 0
				note.duration.quarterLength = 0.125
				restsToDelete.append({ 'song': songIndex, 'note': noteIndex - 1})
				restsToDelete.append({ 'song': songIndex, 'note': noteIndex + 1})
				# fix other issues with 110
				for i, n in enumerate(song.notes):
					if str(n.duration.quarterLength) == "1/3":
						n.duration.quarterLength = 0.375
					if ("Rest" in n.classes and str(n.duration.quarterLength) == "1/6"):
						restsToDelete.append({ 'song': songIndex, 'note': i })
				print(" - fixed error in song", song.number)
			else:
				print(" - unfixed error in song", song.number)
		else:
			print(" - unfixed error in song", song.number)
	restsToDelete.sort(key=lambda rest: rest['note'], reverse=True)
	for rest in restsToDelete:
		songs[rest['song']].notes.pop(rest['note'])
		print(' - removed rest in song', rest['song'])
	return(songs)

# collect each set of X notes
def findStartingPoints( song, number ):
	"Create list of starting points for motives within a song (removes rests)"
	notesAndRests = song.notes.notesAndRests
	length = len(notesAndRests)
	startingPoints = []
	for i in range(0, length - ( number - 1) ):
		valid = True
		for j in range(i, i+number):
			if "Rest" in notesAndRests[j].classes:
				valid = False
		if valid: startingPoints.append(i)
	return(startingPoints)

def buildSets( songs, number ):
	"""Find all possible motives of a specified length in all songs"""
	allMotives = []
	for song in songs:
		songTitle = song.title
		songNumber = song.number
		songMovement = song.movement
		startingPoints = findStartingPoints( song, number )
		notesAndRests = song.notes.notesAndRests
		songMotives = {}
		songMotives['songTitle'] = songTitle
		songMotives['songNumber'] = songNumber
		songMotives['songMovement'] = songMovement
		songMotives['motives'] = []
		for s in startingPoints:
			motive = {}
			motive['songTitle'] = songTitle
			motive['songNumber'] = songNumber
			motive['songMovement'] = songMovement
			motive['startingPoint'] = s
			motive['duration'] = 0
			motive['notes'] = []
			motive['string'] = ""
			for n in range(number):
#				print("current index:", s+n, 'duration:', notesAndRests[s+n].duration.quarterLength)
				d = notesAndRests[s+n].duration.quarterLength
				motive['notes'].append(notesAndRests[s+n])
				motive['duration'] += d
				motive['string'] += notesAndRests[s+n].name + str(notesAndRests[s+n].octave) + "-" + str(d) + "_"
			# motive['string']
			motive['string'] = motive['string'][:-1]
#			print(motive)
			songMotives['motives'].append(motive)
#		print(songMotives['songMovement'], songMotives['songNumber'], songMotives['songTitle'], len(songMotives['motives']))
		allMotives.append(songMotives)
	return(allMotives)


def globalCommonMotives( motiveObject ):
	""""Reorganize a list of motives (by song) into a list of motives by count (with all instances of that motive as a property)"""
	commonMotives = []
	for song in motiveObject:
		motives = song['motives']
#		print(song['songNumber'], song['songTitle'], " - ", len(motives), "to test")
		if len(motives) != 0:
			for m in motives:
				# if this one has not appeared before, add it
				string = m['string']
				filtered = list(filter(lambda motive: motive['string'] == string, commonMotives))
				if len(filtered) == 0:
					commonMotives.append({
						'string': string,
						'count': 1,
						'instances': [m],
						'songCounts': {m['songNumber']: 1}
					})
				# if it has appeared, add the count and instance to the new object
				else:
					for i in commonMotives:
						if i['string'] == string:
							i['count'] += 1
							i['instances'].append(m)
							if m['songNumber'] in list(i['songCounts'].keys()):
								i['songCounts'][m['songNumber']] += 1
							else:
								i['songCounts'][m['songNumber']] = 1
#		else:
#			print(song['songNumber'], song['songTitle'], "has an unknown error, there are no motives to test")
	commonMotives.sort(key=lambda motive: motive['count'], reverse=True)
#	print(len(commonMotives), 'were unique')
#	print('highest count:', commonMotives[0]['count'], commonMotives[0]['string'])
	return(commonMotives)

def weedOutSingles(commonMotives):
	weeded = []
	for m in commonMotives:
		if len(findSongsWithMotive(m)) > 5:
			weeded.append(m)
	return(weeded)

def findSongsWithMotive(motiveObject):
	songs = []
#	print("\n", motiveObject['string'])
	for i in motiveObject['instances']:
		if i['songNumber'] not in songs:
			songs.append(i['songNumber'])
	return(songs)

def tester(songs, num):
	sets = buildSets(songs, num)
	common = globalCommonMotives(sets)
	weeded = weedOutSingles(common)
	print(num, len(weeded), "motives appear in more than five songs")
	return(weeded)

def filterShort( weededList ):
	finalKeepers = []
	startingPointData = []
	i = 0
	unfilteredCount = 0
	for weeded in reversed(weededList): # change to weededList
		# Get a starting point
		print("moving to motives of a new length:", i+1, "of", len(testList))
		count = 0
		for m in weeded:
			count += len(m['instances'])
			unfilteredCount += len(m['instances'])
		print("filtering", count,"motives")
		i += 1
		mCount = 0
		mNum = len(weeded)
		for motive in weeded:
			print("\r  --  moving to motive", mCount + 1, "of", mNum)
			mCount += 1
			iCount = 0
			iNum = len(motive['instances'])
			for instance in motive['instances']:
	#			print("  -- instance", iCount, "of", iNum)
				iCount += 1
				# process each one
				songNumber = instance['songNumber']
					# THIS MAY DO THE TRICK,
				motive['song'] = 0
					# OUTPUT MOTIVES AS INDIVIDUAL MOTIVES WITH A LIST OF OTHER APPEARANCES,
					# NOT INSTANCES
				startingPoint = instance['startingPoint']
				motiveLength = len(instance['notes'])
				infoObject = { 'songNumber': songNumber, 'startingPoint': startingPoint, 'length': motiveLength }
				# check against existing motives
				thisSongsStartingPointData = list(filter(lambda spd: spd['songNumber'] == songNumber, startingPointData))
				if len(thisSongsStartingPointData) == 0:
					startingPointData.append(infoObject)
					finalKeepers.append(motive)
				else:
					thisIsANewInstance = True
					for d in thisSongsStartingPointData:
						startsAfter = infoObject['startingPoint'] >= d['startingPoint']
						endsBefore = infoObject['startingPoint'] <= d['startingPoint'] + d['length'] - infoObject['length']
						if (startsAfter and endsBefore):
							thisIsANewInstance = False
					if thisIsANewInstance:
						startingPointData.append(infoObject)
						finalKeepers.append(motive)
						print("\r       new:", infoObject['songNumber'], infoObject['startingPoint'])
	print("FINISHED: final keepers", len(finalKeepers), "starting points", len(startingPointData),)
	print("    started with", unfilteredCount, "unfiltered motives")
	return(finalKeepers)

# def sortAndReduce( reducedMotives, num):
#	sort the final list and pop out the most common X motives only (instead of thousands) for charts

def getSongCounts( reducedInstances ):
	# build top line "",song numbers...
	songNumbers = []
	csv = {}
	outputText = ""
	for instance in reducedInstances:
		# create an object of ['string'] and [songCount]
		string = instance['string']
		songCounts = instance['songCounts']
		total = 0
		for s in list(songCounts.keys()):
			total += songCounts[s]
		print(string, total)
		if total > 50: # change the number of instances required to make it onto the chart
			if string not in list(csv.keys()):
				csv[string] = songCounts
				for n in list(songCounts.keys()):
					if n not in songNumbers:
						songNumbers.append(n)
	songNumbers = list(range(min(songNumbers), max(songNumbers) + 1))
	for n in songNumbers:
		outputText += "," + str(n)
	for string in list(csv.keys()):
		songs = list(csv[string].keys())
		outputText += "\n" + string.replace("_", " ")
		for n in songNumbers:
			if n in songs:
				outputText += "," + str(csv[string][n])
			else:
				outputText += ",0"
	print(songNumbers)
	print(outputText)

def showCommonMotives( reducedInstances ):
	printed = []
	for instance in reducedInstances:
		string = instance['string']
		songCounts = instance['songCounts']
		totalOccurances = 0
		for s in list(songCounts.keys()):
			totalOccurances += songCounts[s]
		print(string, totalOccurances)
		if totalOccurances > 50: # change the number of instances required to make it onto the chart
			if string not in printed:
				# create stream
				# add string
				# add totalOccurances
				# add list(songCounts.keys())
				printed.append(string)
				print("Created", string)

def createTestList(songs, maxLength, minLength):
	testList = []
	for i in range(maxLength, minLength):
		testList.append(tester(songs, i))
	print('FINISHED:\n', len(testList), "different lengths of motives")
	return(testList)

def removeDuplicatesFromFinalList( reducedInstances ):
	strings = []
	noDupes = []
	for m in reducedInstances:
		if m['string'] not in strings:
			noDupes.append(m)
			strings.append(m['string'])
	return(noDupes)

def sortByCount( noDupes ):
	return(list(reversed(sorted(noDupes, key=lambda motive: motive['count']))))

def showMotive( motive ):
	noteStream = stream.Measure()
	songCount = len(list(motive['songCounts'].keys()))
	fp = "/Users/witulski/Desktop/out/"
	fp += str(motive['count']) + "-" + str(songCount) + ".ly"
	noteList = motive['instances'][0]['notes']
	for n in noteList:
		noteStream.append(n)
	print(fp)
	noteStream.write(fmt='lily', fp=fp)

def showMotives( motiveList ):
	for motive in motiveList:
		if motive['count'] > 100:
			showMotive(motive)

# commands

rasdCorpus = corpus.corpora.LocalCorpus('rasdUnfolded')
songs = buildSongList(rasdCorpus)

# when weeding for at least 3 songs, maxLength is 20 (0 of length 21)
# when weeding for at least 5 songs, maxLength is 12 (0 of length 13)

testList = createTestList(songs, 4, 13)
finalList = filterShort(testList)
noDupes = removeDuplicatesFromFinalList(finalList)
sortedNoDupes = sortByCount(noDupes)

for m in sortedNoDupes:
	print(m['count'], m['string'])

# getSongCounts(finalList)
# showMotives(sortedNoDupes)
