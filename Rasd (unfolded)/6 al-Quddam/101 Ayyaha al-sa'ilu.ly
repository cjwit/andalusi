\version "2.18.2"

\header {
	title = "Ayyahā al-Saʾilu"
	subtitle = "Rasd #101"
	composer = "Page 347"
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
		\tempo "Moderato" 4 = 84

		\partial 2

		a'8 a a4~ |

		\repeat unfold 5 {
			a8^\segno a16( b) a8 g e fis |
			g a16( b) a8 g e8. d16 |
			c4 c8 d e16 fis g8 |
			g4 g8 g g4 |
			a8 b a g e4 |
		}

		\alternative {
			{
				d4-\fine \bar "||" a'8 a a4 |
			}
			{
				d,4 e8 fis g4~ |
			}
		}

		\repeat unfold 2 {
			g8 g g g g4 |
			g4 a8 b d16 c b a |
		}

		\alternative {
			{
				g4 e8 fis g4\laissezVibrer |
			}
			{
				g4 e8 fis g4 |
			}
		}

		g4 g8 g g4 |
		g16 fis e8 fis g a4~ |
		a a8 a a4\laissezVibrer \ds \bar "||"

	}

	\layout {}
	\midi {}
}
