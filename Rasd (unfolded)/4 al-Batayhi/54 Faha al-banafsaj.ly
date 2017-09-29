\version "2.18.2"

\header {
	title = "Fāha al-Banafsaj"
	subtitle = "Rasd #54"
	composer = "Page 291"
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
		\tempo "Allegretto" 4 = 108

		\repeat unfold 2 {
			g8. fis16~ fis8 g a g b a |
			g8. e16~ e8 d e c d4 |
		}

		g8. fis16~ fis8 g a g b a |
		g8. e16~ e8 d e c d4 |

		\repeat unfold 2 {
			e8. e16~ e8 e e4 e~ |
			e8. d16~ d4.~ d16 e d c b a |
			g8 c c d e16 f e d c8 d |
			e16 f e d c8 d e4 d |
		}

	}

	\layout {}
	\midi {}
}
