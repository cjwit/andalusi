\version "2.18.2"

\header {
	title = "al-Hubb ʿSākruh Abtāl"
	subtitle = "Rasd #87"
	composer = "Page 328"
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

		\partial 2

		a'8 a4 a8 |

		\repeat volta 2 {
			e8 d e c d4~ |
		}

		\alternative {
			{
				d4 a'8 a4 g8 |
			}
			{
				d4\repeatTie^\segno a'8 a4 g8 |
			}
		}

		e8 d e c d4~ |
		d4 d8 e16 fis g8 g |
		g4 g c8 b |
		a g g g4 g8 |
		g e fis g a4 |
		a8 a a b a g |
		e16 f e d c4 e8. d16 |
		c8 d d c4 d8 |
		c4. d8 e4 |
		d8 d d c f e d2.-\fine \bar "||"
		r4 a'8 a4 g8 |
		e d e c d4-\ds\laissezVibrer \bar "||"

	}

	\layout {}
	\midi {}
}
