\version "2.18.2"

\header {
	title = "Allah Yā Rabbi"
	subtitle = "Rasd #36"
	composer = "Page 262"
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

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 8/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Andantino" 4 = 72

	\repeat volta 2 {
		e16 f e d c8 d e16 fis g8 a g~ \db g e d e d4 e16 fis g a |
		g fis e d c8 d e16 f e d c8 c \db d e d e d4 e16 fis g a |
		g fis e d c4 c8 d e16 fis g8~ \db g4~ g8 g4 g a8 |
		b16 c b a g8 a a b a g~ \db g e d e d4 e16 fis g a |
		g fis e d c4 c8 d e d \db d e16( d) c8 e d2
	}

	\repeat volta 2 {
		e16 f e d c4 c8 d e16 fis g8~ \db g4 g8 a4 b8 a g |
		e8. d16 c4 c8 d e4 \db d8 e16 d c8 e d2 |
	}

	e16 f e d c4 c8 d e16 fis g8 \db g4 g8 a4 b8 a g |
	e8. d16 c4 c8 d e4 \db d8 e16 d c8 e d2 \bar "|."
}
