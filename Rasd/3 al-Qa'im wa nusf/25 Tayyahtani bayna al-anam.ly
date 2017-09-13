\version "2.18.2"

\header {
	title = "Tayyahtanī bayna al-anām"
	subtitle = "Rasd #25"
	composer = "Page 249"
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
	\time 8/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Moderato" 4 = 96

	\partial 1.

	c4 c \db d8 c4 d8 e f e d |

	\repeat volta 5 {

		c2^\segno d4 e \db d8 e16 d c8 e d4 e16 f e d |
		c2 a8( b) c4 \db d8 c4 d8 e f e d |
		c2 d4 e \db d8 e16 d c8 e d2~ |
		d4 d8 d d4 c \db d( e) d c |
		a g8 g g4 e' \db d8 e16 d c8 e d2~ |
		d4 d8 d d4 c \db d( e) d c |
		a4 g8 g g4 e' \db d8 e16 d c8 e d4 e16 f e d |
		c4 r8 c c4 d \db e2 a4 g |
		e4. d8 c4 e \db d8 e16 d c8 e d2 |
		g4. g8 g4. g8 \db g g fis g a g a4 |
		r8 a4 b8 a g e4 \db c8 d e d e16( d) c8 d4~ |
		d8 g4 g8 g4. g8 \db g g fis g a g a4 |
		r8 a4 b8 a( g e4) \db c8 d e d e16( d) c8 d4 |
		e4 e8 e e4 d~ \db d8 e16 fis g8 a g4 e16 f e d |
		c4 r4 a8 b c4 \db d8 c4 d8 e f e d |
		c2 d4 e \db d8 e16 d c8 e d4 e16 f e d |
		c4 c8 d e4 d~ \db d8 e16 d c8 e d2~ |

	}

	\alternative {
		{
			d4-\fine \bar "||" c4 c c \db d8 c4 c8 e f e d |
		}
		{
			d4 c a8 b c4 \db d8 c4 d8 e f e d |
		}
	}

	\repeat volta 2 {

		c2 d4 e \db d8 e16 d c8 e d4 e16 f e d |
	}

	\alternative {
		{
			c2 a8 b c4 \db d8 c4 d8 e f e d |
		}
		{
			c2 a8 b c4 \db d8 c4 d8 e f e d |
		}
	}

	c2 d4 e \db d8 e16 d c8 e d2~ |
	d4 c c c \db d8 c4 d8 e f e d_\ds \bar "||"
}
