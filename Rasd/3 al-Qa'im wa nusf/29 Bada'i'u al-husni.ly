\version "2.18.2"

\header {
	title = "Badāʾiʿu al-Husni"
	subtitle = "Rasd #29"
	composer = "Page 254"
	meter = "Mizan al-Qaʾim wa Nusf"
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
ds = \markup { \right-align { \italic { "D.S. al Fine" } } }
fine = \markup { \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
continue = \markup { \right-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
coda = \markup { \musicglyph #"scripts.coda" }
error = \markup { { "Wrong number of beats in score" } }

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 4/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Presto" 8 = 152

	e8 e e e e e e4 |
	d8 d c d e fis g4 |
	g8 g a b a g e4 |
	c8 d e e d2 |
	e8 e e e e e e4 |
	d8 d c d e fis g4 |
	g8 g a b a g e4 |
	c8 d e e d2 \bar "|."
}
