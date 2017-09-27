\version "2.18.2"

\header {
	title = "ʿAqāribu al-Asdāgh"
	subtitle = "Rasd #41"
	composer = "Page 273"
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
		\tempo "Moderato" 4 = 92

		d4 d8 e c4 d \db e2~ e8 d e f |

		\repeat volta 2 {
			g8^\segno a g f e4 d \db c8 e4 d8 c4 e |
		}

		\alternative {
			{
				d4. e8 c4 d \db e2~ e8 d e f |
			}
			{
				d4. e8 c4 d \db e2~ e8 d e f |
			}
		}

		g8 a g f e4 d \db c8 e4 d8 c4 e |
		d g8 g g fis g4 \db a2. f4 |

		\repeat volta 9 {
			g8 a g f e d f e \db d1 |
			e4 c d e8( f) \db g a g f e d e( f) |
			g a g f e4 d \db c2 f4~ f8 g |
			f4 g8 g4 g8 g16 a g fis \db e8 fis4 g8 a4 b |
			c( a8) a a4 a~ \db a8 g4 f8 e4 d |
			c4~ c8 e e4 e~ \db e8 e4~ e8~ e d e( f) |
			g a g f e d e16 f e d \db c8 e4 d8 c4 e |
		}

		\alternative {
			{
				d4-\fine \bar "||" g8 g g fis g4 \db a2. f4 |
			}
			{
				d4 d8 e c4 d \db e2~ e8 d e f-\ds \bar "||"
			}
		}

	}

	\layout {}
	\midi {}
}
