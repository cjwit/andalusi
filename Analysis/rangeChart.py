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

def pitchPercentages( song ):
	"Convert song object's durations to percentages"
	notes = song.notes
	pitchObject = buildPitchObject(getRange(songs))
	for n in notes:
		k = str(n.pitch.octave) + " " + str(n.pitch.pitchClass)
		pitchObject[k] += n.duration.quarterLength
	pitches = list(pitchObject.keys())
	duration = 0
	for p in pitches:
		duration += pitchObject[p]
	for p in pitchObject:
		pitchObject[p] = pitchObject[p] / duration
	return pitchObject

def getRange( songs ):
	# get octave ranges
	lowestOctave = 100
	highestOctave = -100
	for song in songs:
		notes = song.notes
		for n in notes:
			if n.pitch.octave < lowestOctave:
				lowestOctave = n.pitch.octave
			if n.pitch.octave > highestOctave:
				highestOctave = n.pitch.octave
	# Check pitch classes
	lowestPitchClass = 12
	highestPitchClass = -1
	for song in songs:
		notes = song.notes
		for n in notes:
			if n.pitch.octave == lowestOctave:
				if n.pitch.pitchClass < lowestPitchClass:
					lowestPitchClass = n.pitch.pitchClass
			if n.pitch.octave == highestOctave:
				if n.pitch.pitchClass > highestPitchClass:
					highestPitchClass = n.pitch.pitchClass
	return { 'lowestOctave': lowestOctave, 'lowestPitchClass': lowestPitchClass, 'highestOctave': highestOctave, 'highestPitchClass': highestPitchClass}

def buildPitchObject( rangeObject ):
	pitchObject = {}
	for i in range(rangeObject['lowestPitchClass'],12):
		pitchObject[str(rangeObject['lowestOctave']) + " " + str(i)] = 0
	for i in range(rangeObject['lowestOctave'] + 1,rangeObject['highestOctave']):
		for j in range(0,12):
			pitchObject[str(i) + " " + str(j)] = 0
	for i in range(0,rangeObject['highestPitchClass'] + 1):
		pitchObject[str(rangeObject['highestOctave']) + " " + str(i)] = 0
	return(pitchObject)

def appendToCSV( csv, pitchObject ):
	"Build object to use as CSV"
	pitches = list(pitchObject.keys())
	for p in pitches:
		csv[p].append(pitchObject[p])

def buildCSV( songs ):
	"Build a CSV file from a list of songs"
	# create empty object with lists (instead of 0s)
	csv = buildPitchObject(getRange(songs))
	for key, value in csv.items():
		csv[key] = []
	# add labels
	metadata = {"titles": [], "numbers": [], "movements":[]}
	outputText = "Songs"
	for index,song in enumerate(songs):
		metadata['titles'].append(song.title)
		metadata['numbers'].append(song.number)
		metadata['movements'].append(song.movement)
		outputText += ","
		outputText += str(index)
		pitchObject = pitchPercentages(song)
		appendToCSV(csv, pitchObject) #NOT FINDING THE FUNCTION
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
rasdCorpus = corpus.corpora.LocalCorpus('rasdUnfolded')
songs = buildSongList(rasdCorpus)
buildCSV(songs)
