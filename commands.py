from music21 import *
import os

# Load corpus
# 	could change this to an environment variable to make it work with any of the Andalusi corpuses

class Song:
	def __init__(self, number, title, movementNumber, movement, duration, notes):
		self.number = number
		self.title = title
		self.movementNumber = movementNumber
		self.movement = movement
		self.duration = duration
		self.notes = notes

def getFileInfo( path ):
	"Collects song metadata from path"
	fileName = os.path.basename(path).split(" ", 1)
	movementInfo = os.path.dirname(path).split("/")[-2].split(" ", 1)
	return {'number': int(fileName[0]), 'title': fileName[1].split(".")[0], 'movementNumber': movementInfo[0], 'movement': movementInfo[1]}

def buildSongList( corpus ):
	"Builds a list of song objects"
	songs = []
	for p in corpus.getPaths():
		fileInfo = getFileInfo(p)
		# check that it's not an improvisation
		if fileInfo['movement'] != "Misc":
			scoreStream = converter.parse(p)
			duration = scoreStream.duration.quarterLength
			notes = []
			for n in scoreStream.flat.notes:
				notes.append(n)
			s = Song(fileInfo['number'], fileInfo['title'], fileInfo['movementNumber'], fileInfo['movement'], duration, notes)
			songs.append(s)
	# Sort and display song information
	songs.sort(key=lambda song: song.number)
#	for s in songs:
#		print(s.number, s.movementNumber, s.movement, s.title, s.duration, len(s.notes))
	return songs

def pitchClassDurations( song ):
	notes = song.notes
	pitchClassList = {0:0, 1: 0,2: 0,3: 0,4: 0,5: 0,6: 0,7:0,8:0,9:0,10:0,11:0}
	for n in notes:
		pitchClassList[n.pitch.pitchClass] += n.duration.quarterLength
	return pitchClassList

def durationsToPercentage( pitchClassList ):
	pitchClasses = list(pitchClassList.keys())
	duration = 0
	for p in pitchClasses:
		duration += pitchClassList[p]
	for p in pitchClassList:
		pitchClassList[p] = pitchClassList[p] / duration
	return pitchClassList

def pitchClassPercentages( song ):
	return durationsToPercentage(pitchClassDurations(song))

def appendToCSV( csv, pitchClassDurations ):
	csv[0].append(pitchClassDurations[0])
	csv[1].append(pitchClassDurations[1])
	csv[2].append(pitchClassDurations[2])
	csv[3].append(pitchClassDurations[3])
	csv[4].append(pitchClassDurations[4])
	csv[5].append(pitchClassDurations[5])
	csv[6].append(pitchClassDurations[6])
	csv[7].append(pitchClassDurations[7])
	csv[8].append(pitchClassDurations[8])
	csv[9].append(pitchClassDurations[9])
	csv[10].append(pitchClassDurations[10])
	csv[11].append(pitchClassDurations[11])

def buildCSV( songs ):
	csv = {0:[],1:[],2:[],3:[],4:[],5:[],6:[],7:[],8:[],9:[],10:[],11:[]}
	outputText = "Songs"
	for index,song in enumerate(songs):
		outputText += ","
		outputText += str(index)
		appendToCSV(csv, pitchClassPercentages(song))
	keys = list(csv.keys()) # manipulate to reverse, get D as bottom line
	for k in keys:
		outputText += "\n" + str(k)
		for listItem in csv[k]:
			outputText += "," + str(listItem)
	print(outputText) # output file

# commands

rasdCorpus = corpus.corpora.LocalCorpus('rasdCorpus')
songs = buildSongList(rasdCorpus)
buildCSV(songs)
