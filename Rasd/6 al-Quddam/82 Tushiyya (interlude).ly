\version "2.18.2"

\header {
	title = "Tushiyya (interlude)"
	subtitle = "Rasd #82"
	composer = "Page 321"
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
			\set Timing.beatStructure = #'(1 1 1 1)
		\tempo "Andantino" 4 = 69

		\repeat volta 2 {
		 	<< { b'8\rest } \\ { \parenthesize d,8 } >> g16 g g8 g e f |
			g f e f d e |
		}

		d8 c d c d e |

		\repeat volta 3 {
			f8^"3x" e f g f a |
			g f16 e d8 c d e |
		}

		f8 e d c b c |
		d4 r4 d8 e |

		\repeat volta 3 {
			f4^"3x" r4 g8 a |
			g f16 e d8 c d e |
		}

		f8 e d c b c | d4 \bar ""



	}

	\layout {}
	\midi {}
}
