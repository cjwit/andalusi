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
	"Convert song object's durations to percentages"
	return durationsToPercentage(pitchClassDurations(song))

def appendToCSV( csv, pitchClassDurations ):
	"Build object to use as CSV"
	pitches = list(pitchClassDurations.keys())
	for p in pitches:
		csv[p].append(pitchClassDurations[p])

def buildCSV( songs ):
	"Build a CSV file from a list of songs"
	csv = {11:[],10:[],9:[],8:[],7:[],6:[],5:[],4:[],3:[],2:[],1:[],0:[]}
	metadata = {"titles": [], "numbers": [], "movements":[]}
	outputText = "Songs"
	for index,song in enumerate(songs):
		metadata['titles'].append(song.title)
		metadata['numbers'].append(song.number)
		metadata['movements'].append(song.movement)
		outputText += ","
		outputText += str(index)
		appendToCSV(csv, pitchClassPercentages(song))
	keys = list(csv.keys()) # manipulate to reverse, get D as bottom line
	for k in keys:
		outputText += "\n" + str(k)
		for listItem in csv[k]:
			outputText += "," + str(listItem)
	outputText += "\n#"
	for i,v in enumerate(metadata['titles']):
		outputText += "," + str(metadata['numbers'][i]) + " " + v
	outputText += "\nMovement"
	for m in metadata['movements']:
		outputText += "," + m
	print(outputText) # output file

# commands

rasdCorpus = corpus.corpora.LocalCorpus('rasdCorpus')
songs = buildSongList(rasdCorpus)
buildCSV(songs)
