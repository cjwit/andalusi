\version "2.18.2"

\header {
	title = "Nahwa al-Hājiba al-Akhal"
	subtitle = "Rasd #56"
	composer = "Page 293"
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
		\tempo "Allegretto" 4 = 112

		\partial 4

		g4 |

		\repeat volta 2 {
			a4^\segno g8 e4 d8 d4~ |
		}

		\alternative {
			{
				d8. c16~ c8 d e4 g |
			}
			{
				d8. c16~ c8 d e4 g |
			}
		}

		a4 g8 e4 d8 e4~ |
		e8. d16~ d8 c a g g'4 |

		\repeat volta 7 {
			a4 a8 a4 a8 a4 |
			a8 a16 b a8 g e4 a8 g |
			e4 d8 c4 d8 e4~ |
		}

		\alternative {
			{
				e8. d16~ d8 c a g^\fine \bar "||" g'4 |
			}
			{
				e8. d16~ d8 c a g g'4^\ds \bar "||"
			}
		}
	}

	\layout {}
	\midi {}
}
