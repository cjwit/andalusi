\version "2.18.2"

\header {
	title = "Katamtu al-Mahabbah Sinīn"
	subtitle = "Rasd #82"
	composer = "Page 320"
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
			\set Timing.beatStructure = #'(1 1 1 1)
		\tempo "Andantino" 4 = 66

		r8 g g g4 d8 |

		\repeat volta 5 {
			e8^\segno fis g a16 b a8 g |
			e8. a16 g8 e16( d) c8 d |
			d4 e16 fis g a g fis ees d |
			c8. c16 c8 c( e) e |
			e4~ e16 d e d e4 |
			a4 g8 e16( d) c8 d |
			e g fis ees d4~ |
		}

		\alternative {
			{
				d8-\fine \bar "||" g8 g g4 d8 |
			}
			{
				d8\repeatTie c c c4 e8 |
			}
		}

		\repeat volta 2 {
			e4~ e16 d e d e4 |
			a g8 e16 d c8 d |
			e4 e16 fis g a g fis ees d |
		}

		\alternative {
			{
				c8 c c c4 e8 |
			}
			{
				c8 c c c( e) e |
			}
		}

		e4~ e16 d e d e4 |
		a4 g8 e16 d c8 d |
		e g fis ees d4~ |
		d8 g g g4 d8-\ds \bar "||"



	}

	\layout {}
	\midi {}
}
