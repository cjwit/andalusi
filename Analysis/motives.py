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
						'instances': [m]
					})
				# if it has appeared, add the count and instance to the new object
				else:
					for i in commonMotives:
						if i['string'] == string:
							i['count'] += 1
							i['instances'].append(m)
#		else:
#			print(song['songNumber'], song['songTitle'], "has an unknown error, there are no motives to test")
	commonMotives.sort(key=lambda motive: motive['count'], reverse=True)
#	print(len(commonMotives), 'were unique')
#	print('highest count:', commonMotives[0]['count'], commonMotives[0]['string'])
	return(commonMotives)

def weedOutSingles(commonMotives):
	weeded = []
	for m in commonMotives:
		if len(findSongsWithMotive(m)) > 2:
			weeded.append(m)
	return(weeded)

def findSongsWithMotive(motiveObject):
	songs = []
#	print("\n", motiveObject['string'])
	for i in motiveObject['instances']:
		if i['songNumber'] not in songs:
			songs.append(i['songNumber'])
	return(songs)

def tester(num):
	sets = buildSets(songs, num)
	common = globalCommonMotives(sets)
	weeded = weedOutSingles(common)
	print(num, len(weeded), "motives appear in more than two songs")
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
		songCounts = {}
		if string not in list(csv.keys()):
			csv[string] = {}
		else:
			songCounts = csv[string]
		print(instance['songs'])
		# build songCount list USE SONGS KEY ON EACH INSTANCE
		appearances = instance['instances']
		# add song numbers where this motive appears
		for a in appearances:
			if a['songNumber'] not in songNumbers:
				songNumbers.append(a['songNumber'])
			if a['songNumber'] not in list(songCounts.keys()):
				songCounts[a['songNumber']] = 0
			# scan this instance for new appearances
			for n in songNumbers:
				filteredInstances = list(filter(lambda appearances: appearances['songNumber'] == n, appearances))
				for f in filteredInstances:
					print('n is', n, 'filtered songNumber is', f['songNumber'])
				songCounts[n] += len(filteredInstances)
				print('added', len(filteredInstances), 'to song', n)
		csv[string] = songCounts
	for i in csv.items():
		print(i)
	outputText += "," + str(songNumbers)

getSongCounts(finalList)

# commands
rasdCorpus = corpus.corpora.LocalCorpus('rasdUnfolded')
songs = buildSongList(rasdCorpus)
commonMotives = globalCommonMotives(buildSets(songs, 10))

# when weeding for at least 3 songs, maxLength is 20 (0 of length 21)
weeded4 = tester(4)
weeded5 = tester(5)
weeded20 = tester(20)
weeded19 = tester(19)
testList = [weeded19, weeded20]
finalList = filterShort(testList)
