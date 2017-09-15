\version "2.18.2"

\header {
	title = "Nahwa mina al-Ghizlān"
	subtitle = "Rasd #49"
	composer = "Page 286"
	meter = "Mizan al-Batayhi"
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
ds = \markup { \right-align { \italic { "D.S. al Fine" } } }
dsalcoda = \markup { \right-align { \italic { "D.S. al Coda" } } }
fine = \markup { \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
continue = \markup { \right-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
coda = \markup { \musicglyph #"scripts.coda" }
error = \markup { { "Wrong number of beats in score" } }
repeaterror = \markup { { "Score appears to be missing repeat" } }
accidentalerror = \markup { { "Unclear accidentals" } }


% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 4/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1)
	\tempo "Moderato" 4 = 96

	\repeat volta 2 {
		a'8. b16 a8 g e4 a8 g |
		e8. d16~ d8 c~ c d e4~ |
		e8 a16 b a8 g e4 a8 g |
		e8. d16~ d8 c~ c d e16 f e d |
		c8 c c d e4 d-\fine |
	}

	\repeat volta 2 {
		c8 c~ c d e16 f e d c8 d |
		e8. c16~ c8 d e e d4 |
	}

	c4 c8 d e16 f e d c8 d |
	e4 c8 d e16 f e f d4-\dc \bar "||"
}
