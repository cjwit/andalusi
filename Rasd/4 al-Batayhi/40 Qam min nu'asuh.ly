\version "2.18.2"

\header {
	title = "Qām min Nuʿāsih"
	subtitle = "Rasd #40"
	composer = "Page 272"
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

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 8/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Moderato" 4 = 88

	\repeat volta 2 {
		e16 f e d c4 d8 d d4~ \db d4. c8 d e d c |
		a4 g8 g' g4~ g8 g \db g g4 g g a16( b) |
		a8 g16 fis e4 a8 a a4~ \db a16-\error g a4 g8( a) b a g |
		e16 f e d c8 d e8. d16 c8 c \db d e d e d2-\fine |
	}

	\repeat volta 2 {
		g8 g g g fis g a4~ \db a16( g) a4 g8 a b a g |
		e16 f e d c8 d e8. d16 c8 c \db d e( d) e d2 |
	}

	g8 g g g fis g a4~ \db a16 g a4 g8 a b a g |
	e16 f e d c8 d e8. d16 c8 c \db d e d e d2-\dc |
}
