\version "2.18.2"

\header {
	title = "Maʿānī al-Hawa"
	subtitle = "Rasd #45"
	composer = "Page 280"
	meter = "Mizan al-Batayhi"
	copyright = "Transcription adapted from Yūnis al-Shāmī, Nūbāt al-Andalusiyya: Nūba al-Rasd (2009)"
	tagline = ""
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
ds = \markup { \right-align { \italic { "D.S. al Fine" } } }
dsalcoda = \markup { \right-align { \italic { "D.S. al Coda" } } }
dcalcoda = \markup { \right-align { \italic { "D.C. al Coda" } } }
fine = \markup { \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
continue = \markup { \center-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
coda = \markup { \musicglyph #"scripts.coda" }
error = \markup { { "Wrong number of beats in score" } }
repeaterror = \markup { { "Score appears to be missing repeat" } }
accidentalerror = \markup { { "Unclear accidentals" } }

% TRANSCRIPTION

\score {

	\relative d' {
		\clef "treble"
		\key c \major
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Allegretto" 4 = 104

		\partial 1.

		b'8 c d4 \db c8 b4 a8 g4 a8 b |

		\repeat unfold 2 {
			c2^\segno b8 c d4 \db c8 b4 a8 g f a4 |
			g4 e16 f g8 f e d4 \db c8 d16 f e8 g f2 |
			g2 fis8 g a4~ \db a8 b4 g8 a4 b8 d |
		}

		\alternative {
			{
				c2 b8 c d4 \db c8 b4 a8 g4 a8 b |
			}
			{
				c2 b8 c d4 \db c8 b4 a8 g4 a8 b |
			}
		}

		\repeat unfold 2 {
			c2 b8 c d4 \db c8 b4 a8 g f a4 |
			g4 e16 f g8 f e d4 \db c8 d16 f e8 g f2 |
			f4 f f g8 a \db f2 f |
			c4 f8 f f4 g8 f \db a2 g4 f8 e |
			d4 c d e~ \db e8 e4 e8 e4 f8 e16 f |
			g4 e8 e e4 d \db c2 e4 d |
			c g'2 a4~ \db a8~ a4 a8 g8. f16 a4 |
			g4 e16 f g8 f e d4 \db c8 d16 e f8 g f2 |
			f4 f f g8 a \db f2 f |
			c4 f8 f f4 g \db
			a2 g4 f8 e \db d4 c d e~ \db e8 e4 e8 e4 f8 e16 f |
			g4 e8 e e4 d \db c2 e4 d |
			c4 g'2 a4~ \db a8~ a4 a8 g f a4 |
			g4 e16 f g8 f e d4 \db c8 d16 e f8 g f2 |
			g2 fis8 g a4~ \db a8 b4 g8 a4 b8 d^\coda |
		}

		\alternative {
			{
				c2 b8 c d4 \db c8 b4 a8 g4 a8 b |
			}
			{
				c2 b8 c d4 \db c8 b4 a8 g4 a8 b-\dsalcoda \bar "||"
			}
		}

		% coda

		\break

		c4^\coda a2 g4 \db a16 bes a g f4 g a |

		\repeat unfold 2 {
			f8 g f4. g8 f4 \db r8 f4 e8 f4 g |
			f8 g f e d4 c \db r8 f4 e8 f4 g |
			f8 g f e d c d e \db f1 |
		}

		\alternative {
			{
				a2. g4 \db a16 bes a g f4 g a |
			}
			{
				a2. g4 \db a16 bes a g f4 g a |
			}
		}

		f8 g8 f2. \db r8 f4 e8 f4 g |
		f8 g f e d4 c \db r8 f4 e8 f4 g |
		f8 g f e d c d e \db f1 |
		a2. g4 \db a16 bes a g f4 g a |
		f8 g f2. \db r8 f4 f8 f2 |
		f4 f f g8 a \db f2 f |
		c4 f8 f f4 g \db a2 g4 f8 e |
		d4 c d e~ \db e8 e4 e8 e4 f8 e16 f |
		g4 e8 e e4 d \db c2 e4 d |
		c4 g' g a~ \db a8~ a4 a8 g f a4 |
		g4 e16 f g8 f e d4 \db c8 d16 e f8 g f2 |
		f4 f f g8 a \db f2 f |
		c4 f8 g f4 g8 f \db a2 g4 f8 e |
		d4 c d e~ \db e8 e4 e8 e4 f8 e16 f |
		g4 e8 e e4 d \db c2 e4 d |
		c g' g a~ \db a8~ a4 a8 g f a4 |
		g4 e16 f g8 f e d4 \db c8 d16 e f8 g f2 |
		g2 fis8 g a4~ \db a8 b4 g8 a4 b8 d |
		c2 \bar "|."





	}

	\layout {}
	\midi {}
}
