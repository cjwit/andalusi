\version "2.18.2"

\header {
	title = "Imshi Yā Rasūla"
	subtitle = "Rasd #104"
	composer = "Page 349"
	meter = "Mizan al-Quddam"
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
		\time 3/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1)
		\tempo "Moderato" 4 = 92

		r8 e fis g4 a8 |

		\repeat volta 5 {
			g4^\segno e16 fis g a g4~ |
			g8 g g g4 a8 |
			g4 e16 fis g a g4~ |
			g8 g g g4 a8 |
			g2 a16 g fis e |
			d8 c b c d4 |
			g4 g8 g4 a8^\coda |
			b16 a g8 a16 b c e d c b a |
		}

		\alternative {
			{
				g8 e fis g4 a8 |
			}
			{
				g8 c b a g g |
			}
		}

		\repeat volta 2 {
			g2 a16 g fis e |
			d8 c b c d4 |
			g4 g8 g4 a8 |
			b16 a g8 a16 b c e d c b a |
		}

		\alternative {
			{
				g8 c b a g g |
			}
			{
				g8 g g g4 a8 |
			}
		}

		g2 d4~ |
		d8 c b c d4 |
		g4 g8 g4 a8 |
		b4 g8 a g4~ |
		g8 e fis g4 a8-\dsalcoda \bar "||"

		b4^\coda g8 a g4~ |
		g r2 \bar "|."


	}

	\layout {}
	\midi {}
}
