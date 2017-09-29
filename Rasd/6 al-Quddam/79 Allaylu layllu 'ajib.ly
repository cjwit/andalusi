\version "2.18.2"

\header {
	title = "Allaylu Layllu ʿAjīb"
	subtitle = "Rasd #79"
	composer = "Page 317"
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
		\tempo "Andante" 4 = 63

		r8 e8 e8. e16 e f e d |

		\repeat volta 5 {
			c4 c8 d e16 fis g8~ |
			g4. a16 b a8 g |
			g16 fis e8 fis( g16) g a4~ |
			a8 a16( b) a8 g e8. d16 |
			c4 c8 d e4 |
			f?8 d d e c e |
			d2.-\fine \bar "||"
		}

		\alternative {
			{
				r8 e e8. e16 e f e d |
				\set Score.repeatCommands = #'(start-repeat)
			}
			{
				a'8.-\repeaterror b16 a8 g e8. d16 |
			}
		}

		c4 c8 d e4 |
		f8 d d e c e |
		d2. |
		\set Score.repeatCommands = #'(end-repeat)

		a'8. b16 a8 g e8. d16 |
		c4 c8 d e4 |
		f8 d d e c e |
		d2.-\dc \bar "||"


	}

	\layout {}
	\midi {}
}
