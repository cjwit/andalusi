# this works fine, outputs a pdf
# songs[x].notes is a flattened stream imported from a MIDI file
for n in songs[5].notes:
	# filtering out all of the shortest notes
	if n.duration.quarterLength > 1:
		print(n.duration.quarterLength)

# 1.5
# 1.5
# 2.0
# 2.0
# 1.5
# 1.5

# this works fine
songs[5].notes.show() # output default set to lily.pdf

# this one, however, does not work. it results in an exception that durations longer than a longa are not supported
# filtering out all of the shortest notes to show that none are longer than a longa...
for n in songs[2].notes:
	if (n.duration.quarterLength == 0.125 and 'Note' in n.classes):
		print("current", n.duration.quarterLength, n.name, n.offset)
		print("next", n.next().duration.quarterLength)
		if "Rest" in n.next().classes:
			# Delete, somehow

# 2.25
# 3.0
# 2.25

# this does not work...
songs[2].notes.show()

Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/stream/__init__.py", line 257, in show
    return super(Stream, self).show(*args, **kwargs)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/base.py", line 2629, in show
    **keywords)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/converter/subConverters.py", line 444, in show
    returnedFilePath = self.write(obj, fmt, subformats=subformats, **keywords)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/converter/subConverters.py", line 412, in write
    conv.loadFromMusic21Object(obj)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 298, in loadFromMusic21Object
    self.loadObjectFromScore(m21ObjectIn, makeNotation=False)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 374, in loadObjectFromScore
    lpScoreBlock = self.lyScoreBlockFromScore(scoreIn)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 408, in lyScoreBlockFromScore
    lpPrefixCompositeMusic = self.lyPrefixCompositeMusicFromStream(scoreIn)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 904, in lyPrefixCompositeMusicFromStream
    lpSequentialMusic = self.lySequentialMusicFromStream(streamIn, beforeMatter=beforeMatter)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 833, in lySequentialMusicFromStream
    self.appendObjectsToContextFromStream(streamIn)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 1025, in appendObjectsToContextFromStream
    self.appendM21ObjectToContext(el)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 1085, in appendM21ObjectToContext
    self.appendContextFromNoteOrRest(thisObject)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 1177, in appendContextFromNoteOrRest
    lpSimpleMusic = self.lySimpleMusicFromNoteOrRest(noteOrRest)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 1299, in lySimpleMusicFromNoteOrRest
    lpMultipliedDuration = self.lyMultipliedDurationFromDuration(noteOrRest.duration)
  File "/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/music21/lily/translate.py", line 1564, in lyMultipliedDurationFromDuration
    raise LilyTranslateException("Cannot support durations longer than longa")
music21.lily.translate.LilyTranslateException: Cannot support durations longer than longa
