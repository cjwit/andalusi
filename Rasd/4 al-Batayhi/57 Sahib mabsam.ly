\version "2.18.2"

\header {
	title = "Sāhib Mabsam"
	subtitle = "Rasd #57"
	composer = "Page 294"
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
		\tempo "Allegretto" 4 = 116

		\repeat volta 2 {
			e4 e e e |
			d d c8 d e4~ |
			e8 g g g a g b a |
			e8. e16~ e8 d e c d4 |
		}

		e4 e e e |
		d d c8 d e4~ |
		e8 g g g a g b a |
		g e~ e d e c d4 |

		\repeat volta 2 {
			r8 e4 e16 f g8 e d4~ |
			d8 d4 d d8 d4~ |
			d8 d4 d d8 e16 f e d |
			c8 c c c c d e fis |
			g8 g g a4 g8 b a |
			g8. e16~ e8 d e c d4 |
		}

		\repeat volta 2 {
			g8. g16~ g8 g a g b a |
			g8. e16~ e8 d e c d4 |
		}

		\repeat volta 2 {
			g8. g16~ g8 g a g b a |
			g8. e16~ e8 d e c d4 |
		}

		g8. g16~ g8 g a g b a |
		g e~ e d e c d4 |
		r8 e4 e16 f g8 e d4~ |
		d8 d d d4 d8 d4~ |
		d8 d d4 d8 d d4 |
		e16 f e d c8 c c d e fis |
		g4 r8 g16-"rall." g a8 g e d c d e c d2 \fermata \bar "|."


	}

	\layout {}
	\midi {}
}
