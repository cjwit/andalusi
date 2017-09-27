from music21 import *
import os

# Load corpus
# 	could change this to an environment variable to make it work with any of the Andalusi corpuses

rasdCorpus = corpus.corpora.LocalCorpus('rasdCorpus')

class Song:
	def __init__(self, number, title, movementNumber, movement):
		self.number = number
		self.title = title
		self.movementNumber = movementNumber
		self.movement = movement

# Create list of song numbers and titles

songs = []

for p in rasdCorpus.getPaths():
	fileName = os.path.basename(p)
	fileInfo = fileName.split(" ", 1)
	movementInfo = os.path.dirname(p).split("/")[-2].split(" ", 1)

	number = int(fileInfo[0])
	title = fileInfo[1].split(".")[0] # remove file extension
	movementNumber = movementInfo[0]
	movement = movementInfo[1]

	s = Song(number, title, movementNumber, movement)
	songs.append(s)

# Sort and display song information

songs.sort(key=lambda song: song.number)

for s in songs:
	print(s.number, s.movementNumber, s.movement, s.title)
