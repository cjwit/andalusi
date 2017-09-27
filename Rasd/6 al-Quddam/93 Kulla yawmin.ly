\version "2.18.2"

\header {
	title = "Kulla Yawmin"
	subtitle = "Rasd #93"
	composer = "Page 339"
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
		\tempo "Andantino" 4 = 76

		\partial 1

		d4~ |

		% changing repeat structure

		\repeat volta 3 {
			d8 c d e d c |
			a4 g d'~ |
			d8 c d e d c |
			a g a16 g a b g4~ |
			g4 g'8 g4 a8 |
			g2 g4~ |
			g8 g4 g a16 b |
			a8 g16 fis e4 a~ |
			a8 g a b a g |
			e d e c d4 |
			e4 e8 e4 d8 |
			c4~ c8 d c4~ |
			c8 c4 c d8 |
			e2 a4~ |
			a8 g a b a g |
			e d e c d4 |
			e4 e8 e4 d8 |
			c4~ c8 d e16 f e d |
			c8 c d e d e
		}

		\alternative {
			{
				d4 r4 d4\laissezVibrer |
			}
			{
				d4 r2 \bar "|."
			}
		}

	}

	\layout {}
	\midi {}
}
