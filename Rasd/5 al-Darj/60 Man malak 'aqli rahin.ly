\version "2.18.2"

\header {
	title = "Man Malak ʿAqlī Rahīn"
	subtitle = "Rasd #60"
	composer = "Page 298"
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
		\tempo "Andantino" 4 = 69

		\repeat volta 2 {
			c4~ c8 d e4 g |
			e~ e8 d c4 e |
			d8 e c e d2 |
		}

		c4~ c8 d e4 g |
		e~ e8 d c4 e |
		d8 e c e d2 |

		d'4. e8 d4 c |
		a4 g8 a g4 a8 b |
		g4 r8 b a4 g |
		e16 f e d c8 e e fis g a16 b |
		g4 e16 f e d c4 e |
		d8 e c e d2-\fine |

		\repeat volta 2 {
			c4 b8 c d4. e8 |
			c4 e8 e e4 g |
			e4 r8 a a4 g |
			e16 f e d c4 e8 fis g a16 b |
			g4 e16 f e d c4 e |
			d8 e c e d2-\dc
		}

	}

	\layout {}
	\midi {}
}
