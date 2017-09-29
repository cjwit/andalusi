\version "2.18.2"

\header {
	title = "Tushiyya"
	subtitle = "Rasd #33"
	composer = "Page 258"
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
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Andantino" 4 = 66

		\repeat unfold 3 {

			g8. g16 g8 g fis g a4 |

		}

		\alternative {
			{ r8 a4 a8 a g b a | }
			{ g8. e16 e8 e4 d8 c4 | }
		}


		r8^\segno c4 d8 e d e4 |
		e4 e8 e4 d8 g16 f e d |
		c8 d4 d8 e d e4 |
		a8 b a g fis16 g fis ees d4 |
		r8 c4 d8 e d e4 |
		c'8 b a g fis16 g fis ees d4 |
		r8^\coda g fis g a g b a |
		g4 r8 g4. g4 |
		g4 r8 g4. g4 |
		r8 g fis g a g b a |
		g8. e16 e8 e4 d8 c4_\dsalcoda \bar "||"
		r8^\coda g' fis g a4_\continue

	}

	\layout {}
	\midi {}
}
