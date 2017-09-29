\version "2.18.2"

\header {
	title = "Yā Saʿd Man Aʿtāh"
	subtitle = "Rasd #64"
	composer = "Page 302"
	meter = "Mizan al-Darj"
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
		\tempo "Andantino" 4 = 76

		\partial 8

		c8 |

		\repeat unfold 5 {
			c4^\segno d8 e4 g8 e16 f e d |
			c4 c8 d e16 f e d c8 c |
			c4 d8 e d e d4~ |
			d d8 d d4. e8 |
			e fis g a16 b g4. a8 |
			a8 b a4 g e16 f e d |
			c4 c8 d e4 d8 e |
		}

		\alternative {
			{
				c8 d c e d4.-\fine \bar "||" c8 |
			}
			{
				c8 d c e d4. a'8 |
			}
		}

		\repeat unfold 5 {
			a8 b a4 g e8 fis |
			g a16 b a8 g e16 f e d c8 c |
			c2 d4 e |
		}

		\alternative {
			{
				d8 e c e d4. a'8 |
			}
			{
				d,8 e c e d4. c8-\ds \bar "||"
			}
		}

	}

	\layout {}
	\midi {}
}
