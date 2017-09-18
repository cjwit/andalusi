\version "2.18.2"

\header {
	title = "Qalbī Yakhāf Mina al-Gharām"
	subtitle = "Rasd #67"
	composer = "Page 305"
	meter = "Mizan al-Darj"
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
	\tempo "Andantino" 4 = 76

	\repeat volta 2 {
		r8 e4 e8 d e d4~ |
		d8 d4 c d8 e fis |
		g g4 a g8 e16 f e d |
		c8 c d e d e d4-\fine |
	}

	\repeat volta 2 {
		r8 g4 a g8 e16 f e d |
		c8 c d e d e d4 |
	}

	r8 g4 a g8 e16 f e d |
	c8 c d e d e d4-\dc \bar "||"

}
