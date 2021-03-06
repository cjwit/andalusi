\version "2.18.2"

\header {
	title = "Yā Sūra Qamar"
	subtitle = "Rasd #31"
	composer = "Page 256"
	meter = "Mizan al-Qaʾim wa Nusf"
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
		\time 4/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Presto" 8 = 184

		r8. g16 g8 g4 g8 g4~ |

		\repeat unfold 5 {

			g8^\segno fis4 g8 a2 |
			f8. a16 a8 b( a) g e4 |
			d8. c16 d8 e d e d4-\fine \bar "||"

		}

		\alternative {
			{
				r8. g16 g8 g4 a8 g4 |
			}
			{
				r8. c,16 c8 c4 d8 e16 f e d |
			}
		}

		\repeat unfold 2 {

			c8 c d e( d) e d4~
		}

		\alternative {
			{
				d8. c16 c8 d4 d8 e16 f e d |
			}
			{
				r8. c16 c8 d4 d8 e16 f e d |
			}
		}

		c8 c d e( d) e d4~ |
		d8. g16 g8 g4 g8 g4-\ds \bar "||"

	}

	\layout {}
	\midi {}
}
