\version "2.18.2"

\header {
	title = "Jād ʿIliyya Burdāh"
	subtitle = "Rasd #98"
	composer = "Page 344"
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
		\tempo "Moderato" 4 = 80

		\partial 4

		e16 f e d |

		% changing repeat structure

		\repeat volta 3 {
			c8 c d e d e |
			d4 g a~ |
			a8 a a b c b |
			a4~ a8 a a b |
			a g g e4 d8 |
			e16 f e d c4 e16 f e d |
			c8 c d e16 fis g8 g16( a) |
			g fis e d c4 e f e d |
			c8 c d e d e |
		}

		\alternative {
			{
				d4 r4 e16 f e d |
			}
			{
				d4 r2 \bar "|."
			}
		}

	}

	\layout {}
	\midi {}
}
