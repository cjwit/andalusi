\version "2.18.2"

\header {
	title = "Bintā"
	subtitle = "Rasd #39"
	composer = "Page 270"
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
repeaterror = \markup { { "Sore appears to be missing repeat" } }

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 8/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Moderato" 4 = 84

	\partial 4
	g4 |

	\repeat volta 5 {
		a1 \db r8 g fis g a g a4 |
		d,4. d8 e16 fis g4 g8~ \db g a4 a8 a4 bes8 a |
		g a g f e f d e \db f g4 r8 a4 bes8 a |
		g a g f e d g f \db e d4. g4~ g8 a |
		f4 f8 f f g f16 g f e \db d8 e4 f8 g8. f16 g4 |
		g8 g g g g4. g8~ \db g a4 a8 e4 e |
		e d c c \db d8 e4 d8 g4 e |
	}

	\alternative {
		{
			e4 d2 d8 d \db d c f e d4 g |
		}
		{
			e4 d2 d8 d \db d c f e d2~ |
		}
	}

	d4 b b8 c d4 \db c8 b16 a g8 a g4 a16 b c d |

	\repeat volta 2 {
		c2 b8 c d4 \db c8 b16 a g8 g a c b a |
		g2. g4~ \db g8 a4. d8 e f g |
	}

	\alternative {
		{
			f2 b,8 c d4 \db c8 b16 a g8 a g4 a16 b c d |
		}
		{
			f2 b,8 c d4 \db c8 b16 a g8 a g4 a16 b c d |
		}
	}

	c2 b8 c d4 \db c8 b16 a g8 g a c b a |
	g2 fis'8 g a4~ \db a8 g fis g a2 |
	a8 a a4 a~ a8 a~ \db a8 g4. f8 d e f |
	g4~ g8 a a b c a~ \db a g4~ g8 e4 e |
	e8 e d4 c c \db d8 e4 c8 d e f g |
	f2 g16 f e d c4~ \db c8 d4 c8 d e f g |
	f2 fis8 g a4~ \db a8 g( fis) g a2 |
	a8 a a4 a~ a8 a~ \db a g4. f8 d e f |
	g4. a8 a b( c) a~ \db a g4~ g8 e4 e |
	e d c c \db d8 e4. g4 e |
	d d8 d d4 d8 d \db d c  f e d2 \bar "|."
}
