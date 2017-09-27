\version "2.18.2"

\header {
	title = "Fadahta bil-Muhayyā"
	subtitle = "Rasd #85"
	composer = "Page 326"
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
		\tempo "Andantino" 4 = 72

		\repeat volta 2 {
			\partial 2
			c'8 b a4 |

			g4 g g8 a |
			g16 fis ees d c8 d4 d8 |
			d4 e?16 fis g a g fis ees d |
			c4 c e?~ |
			e a g |
			e d8 c4 d8 |
			ees g fis ees d4~ |
			d-\fine
		}

		\repeat volta 2 {
			c4 e?~ |
			e a g |
			e d8 c4 d8 |
			d4 e16 fis g a g fis ees d |
			c4
		}

		c4 e?~ |
		e a g |
		e d8 c4 d8 |
		ees8 g fis ees d4~ |
		d4-\dc \bar "||"

	}

	\layout {}
	\midi {}
}
