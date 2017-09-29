\version "2.18.2"

\header {
	title = "Qad Zāra Man Nahwāh"
	subtitle = "Rasd #61"
	composer = "Page 299"
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
		\tempo "Andantino" 4 = 72

		\repeat unfold 2 {
			c4 c8 d e4. d8 |
			c4( d8) e( d) e d4 |
		}

		c4 c8 d e4. d8 |
		c4 d8 e d e d4 |

		\repeat unfold 2 {
			d4 d8 c d4. c8 |
			d8 e d c a4 g |
			e'8 fis g a g16 fis e d c4 |
			c4 c8 d e4. d8 |
			c4 d8 e d e d4 |
		}

	}

	\layout {}
	\midi {}
}
