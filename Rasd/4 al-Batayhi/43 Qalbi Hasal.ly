\version "2.18.2"

\header {
	title = "Qalbī Hasal"
	subtitle = "Rasd #43"
	composer = "Page 276"
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
		\tempo "Allegretto" 4 = 100

		\partial 1..

		r8 c'8 c4 c \db d8 c4 b8 a4 g |

		\repeat volta 5 {
			a4^\segno a8 b a4 g \db e fis8 g a2~ |
			a4 b8 b a4 g \db e8 d e c d2 |
			e2 e4 e~ \db e8 d4 d8 e fis g a |
			g4 e16 f e d c4 c \db d8 c4 d8 e2~ |
			e4 r8 c'8 c4 c \db d8 c4 b8 a4 g |
			a4 a8 b a4 g \db e4-\error fis8 g a2~ |
			a4 a8 b a4 g \db e8 d e c d2 |
			e2 e4 e~ \db e8 e4 d8 e fis g a |
			g4 e16 f e d c4 c \db d8 c4 d8 e2 |
			g2 fis4 g \db a g b a |
			g e16 f e d c4 c \db d8 e d e d2~ |
		}

		\alternative {
			{
				d4-\fine \bar "||" r8 c'8 c4 c \db d8 c4 b8 a4 g |
			}
			{
				g4 g fis g \db a g b a |
			}
		}

		\repeat volta 2 {
			g4 e16 f e d c4 c \db d8 e d e d2~ |
		}

		\alternative {
			{
				g4 g fis g \db a g b a |
			}
			{
				g4 g fis g \db a g b a |
			}
		}

		g4 e16 f e d c4 c \db d8 e d e d2~ |
		d4 r8 c'8 c4 c \db d8 c4 b8 a4 g-\ds \bar "||"


	}

	\layout {}
	\midi {}
}
