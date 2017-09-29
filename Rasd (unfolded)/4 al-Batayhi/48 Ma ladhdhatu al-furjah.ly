\version "2.18.2"

\header {
	title = "Mā Ladhdhatu al-Furjah"
	subtitle = "Rasd #48"
	composer = "Page 285"
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
		\tempo "Moderato" 4 = 92

		\repeat unfold 2 {
			c4 c8 d e16 f e d c8 d |
			e16 f e d c8 d e e d4 |
			g8. g16~ g8 g a4 b8 a |
			g8. e16~ e8 d e16 d c8 d4 |
		}

		\repeat unfold 2 {
			c4-\markup { { "No barlines in score" } } c8 d e16 f e d c8 d \bar "" |
			e16 f e d c8 d e16 f e d c8 d \bar "" |
			e8.( d16) c8 e d2 |
		}

		c4-\markup { { "No barlines in score" } } c8 d e16 f e d c8 d \bar "" |
		e16 f e d c8 d e16 f e d c8 d \bar "" |
		e8.( d16) c8 e d2 |

	}

	\layout {}
	\midi {}
}
