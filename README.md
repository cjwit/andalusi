# Andalusi transcriptions

# To Do

Where to start

* finalList is coming out as a list of motives, but those are really individual istnaces with references (in ['instances'] of other appearances). Instance data could be at the top level, making analysis easier
		See line 236
		
* Sort globalCommonMotives by avoiding duplicates that occur within those that are already selected (adjust starting indices for scans)
	* Malhun work may have done this
	* Or limit it to only appearing once within a song (would speed the process up, too, and allow to scan all lengths starting within a reasonable number)
	* Not only how often does it appear, but how many different songs does it appear in?

* Using globalCommonMotives, incorporate "show" function by creating a useful depiction of what is going on
	* Collect handful of most common (beginning of the list)
	* Create list of where the motive appears
	* Build a text object with that list
	* Build a stream, bounded by double bar line, append text, give a unique number/id
	* Combine all common motives, show()
	* Chart appearance of individual motives by number/id over songs (multiple line line graph)
	* Automate to find useful ones of various lengths

* Redo the same thing, but without reference to duration?

LilyPond

* Add dotted bar line `\db` to 4 and 5 (Basit)
* Add lyrics for performance

Python

* Find common motives, distribution of them
	* Perhaps they can have numbers and can be charted (in case some come and go throughout)
* Charts song numbers (one tempo per song), others using measures showing a "weighted" distribution of tempo, same two sets of x-axis ticks could serve these others, as well

## Notes

Introductions

* Rasd intro, from 2009, appears to be the most recent and the most substantial. It updates the Ramal al-Maya (1984) introduction and includes the same examples.
* Rasd intro includes a listing of the four modes that appear within the Rasd nuba (page 104)

## Major questions for discussion

* Introduce the purpose of these transcriptions (as *ürtext*)
	* Show transcriptions of real performance (Shiki, Shami's example in the introduction)
	* Orality, page 207-208: examples of Mulay Ahmad al-Wakili departing from the "aslī" version

* What are these introductions saying about the repertoire?
	* How do they represent modality? What about rhythm?
	* Is there anything to be learned from comparing the various examples?
	* What can I offer that is different than what is already in there?

* How do distinct modes live within a bounded and firmly ordered repertoire?
	* Where are the lines and do they matter in this context?
	* What gives a mode an identity within this type of context (especially when improvisations often borrow from another tradition)?

* Are there four distinct modal segments (Rasd, Hasar, Zidan, Mazmum)?
	* What is the best way to measure shifts in tonality? What is the structural or modal context for a given shift?

## Analysis

* Are there motivic consistencies?
* Is there a range- or contour- based development through each movement?
* Overall trends (perhaps as graphs)
	* Common one-beat, two-beat motives
	* Repetition
	* Common contour motion
		* Number of notes with less regard to duration
		* Cutting across movements, time signatures, rhythmic feels
* Associate rhythmic accents to musical motion
	* Change from beginning to end of movements? (Relationship to tempo?)

## Graphs

Tempo

* Changes in tempo (increasing), lines between time signatures

Pitch Class and Range

* Where do new pitches appear? Do they signal anything structural?
* Most common pitches across the repertoire (absolute)
	* Using same x-axis pair, a scatter plot of absolute pitch could show mode and range (with contour)
	* Using same x-axis pair, a scatter plot of pitch classes in each song could show mode
