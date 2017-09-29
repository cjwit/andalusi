\version "2.18.2"

\header {
	title = "Yā ʿAjbī"
	subtitle = "Rasd #51"
	composer = "Page 288"
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
		\time 4/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1)
		\tempo "Allegretto" 4 = 104

		e4. e8 e4 e |

		\repeat unfold 5 {
			d8^\segno d d d d4 c8 d |
			e4 r8 a8 g4 e16 f e d |
			c8. c16~ c8 d e d e c |
			d4 r8 e e16 f g8 f e |
		}

		\alternative {
			{
				d4 r8 a' g4 e16 f e d |
				c8. c16~ c8 d e d e c |
				d4 r8 e e16 f g8 f e |
				d4-\fine \bar "||" r8 e8 e4 e |
			}
			{
				d4 r8 a' g4 e16 f e d |
			}
		}

		\repeat unfold 2 {
			c8. c16~ c8 d e d e c |
		}

		\alternative {
			{
				d4 r8 a' g4 e16 f e d |
			}
			{
				d4 r8 a' g4 e16 f e d |
			}
		}

		c8 c c d e d e c |
		d4. e8 e4 e~-\ds \bar "||"
	}

	\layout {}
	\midi {}
}
