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
			notes = scoreStream
			print(notes)
			s = Song(fileInfo['number'], fileInfo['title'], fileInfo['movementNumber'], fileInfo['movement'], duration, notes, tempo)
			songs.append(s)
	# Sort and display song information
	songs.sort(key=lambda song: song.number)
	return songs

def collectSet( notes ):
	"Convert note objects into a set object"


	, notes[i+1].name, notes[i+2].name, notes[i+3].name

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
		print(songMotives['songMovement'], songMotives['songNumber'], songMotives['songTitle'], len(songMotives['motives']))
		allMotives.append(songMotives)
#	return(allMotives)

# not returning anything right now
buildSets(songs, 4)

# commands
rasdCorpus = corpus.corpora.LocalCorpus('rasdCorpus')
songs = buildSongList(rasdCorpus)
