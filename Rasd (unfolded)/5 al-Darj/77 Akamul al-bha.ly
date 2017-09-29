\version "2.18.2"

\header {
	title = "Akāmul al-Bhā"
	subtitle = "Rasd #77"
	composer = "Page 315"
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
		\tempo "Vivace" 4 = 126

		\repeat unfold 6 {
			\partial 4
			e4 |
			e4~ e8 e4 e8 d4 |
			r8 d4 d8 c4 d |
			e8 d e fis g4 g |
			a4~ a8 a4~ a8 g4 |
			g e e d~ |
			d8 c4 d8 e4 e |
		}

		\alternative {
			{
				\partial 2.

				d2.-\fine
			}
			{
				d2. r4 | \break
			}
		}

		\repeat unfold 6 {
			g4 g a g |
			e8 f e d c2 |
			c4 d e e |
		}

		\alternative {
			{
				d1 |
			}
			{
				d2.-\dc \bar "||"
			}
		}



	}

	\layout {}
	\midi {}
}
