\version "2.18.2"

\header {
	title = "Aw Hashta Mud Ghibta"
	subtitle = "Rasd #100"
	composer = "Page 346"
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

		\partial 2

		a'8 a4 g8 |

		\repeat volta 3 {
			a8 b a g e16 fis g a |
			g8 g g a16 b a8 g |
			e d e c d4~ |
			d \breathe a'8 a4 g8 |
			a b a g e16 fis g a |
			g8 g g a16 b a8 g |
			e d e c d4~ |
			d g8 g4 g8 |
			g4 a16 b c e d c b a |
			g4 g8 g4 a8 |
			g16 fis e8 fis g a4~ |
			a4 a8 a4 g8 |
			a b a g e16 fis g a |
			g8 g g a16 b a8 g |
			e d e16 fis g a g fis e d |
			c4 c8 c4 d8 |
			e16 fis g8 a16 b c e d c b a |
			g4 g8 a4 g8 |
			e d e c d4~ |
		}

		\alternative {
			{
				d4 a'8 a4 g8 |
			}
			{
				d4\repeatTie r2 \bar "|."
			}
		}


	}

	\layout {}
	\midi {}
}
