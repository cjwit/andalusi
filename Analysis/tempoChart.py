from music21 import *
import os

# Load corpus
# 	could change this to an environment variable to make it work with any of the Andalusi corpuses

class Song:
	def __init__(self, number, title, movementNumber, movement, duration, notes, tempo):
		self.number = number
		self.title = title
		self.movementNumber = movementNumber
		self.movement = movement
		self.duration = duration
		self.notes = notes
		self.tempo = tempo

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
			scoreStream = converter.parse(p).flat
			# get metronome mark
			sIter = scoreStream.iter
			mmFilter = stream.filters.ClassFilter('MetronomeMark')
			sIter.addFilter(mmFilter)
			metronomeMark = sIter[0] # no instances of multiple markings
			tempo = metronomeMark.number
			duration = scoreStream.duration.quarterLength
			notes = []
			for n in scoreStream.notes:
				notes.append(n)
			s = Song(fileInfo['number'], fileInfo['title'], fileInfo['movementNumber'], fileInfo['movement'], duration, notes, tempo)
			songs.append(s)
	# Sort and display song information
	songs.sort(key=lambda song: song.number)
	return songs

def buildCSV( songs ):
	"Build a CSV file from a list of songs"
	# create empty object
	metadata = {"titles": [], "numbers": [], "movements": [], "tempos": []}
	outputText = "Songs"
	for index,song in enumerate(songs):
		metadata['titles'].append(song.title)
		metadata['numbers'].append(song.number)
		metadata['movements'].append(song.movement)
		metadata['tempos'].append(song.tempo)
		# create first line
		outputText += ","
		outputText += str(index)
	# build csv lines
	outputText += "\nTempo"
	for t in metadata['tempos']:
		outputText += "," + str(t) # requires doubling of late movement song tempos by hand
	outputText += "\nTitle"
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
