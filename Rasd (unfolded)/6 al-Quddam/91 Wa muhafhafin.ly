\version "2.18.2"

\header {
	title = "Wa Muhafhafin"
	subtitle = "Rasd #91"
	composer = "Page 334"
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

		fis8 g a4~ |

		\repeat unfold 3 {
			a8 g a2~ |
			a4 a8 b a g |
			e4 d4. d8 |
			d4 e16 fis g a g fis e d |
			c4 c d |
			e d8 e c e |
			d4 fis8 g a4~ |
			a8 g a2~ |
			a4 a8 b a g |
			e4 d4. d8 |
			d4 e16 fis g a g fis e d |
			c4 c d |
			e d8 e c e |
			d8. e16 f8. f16 e f e d |
			c8. c16 d8 e4 g8 |
			e4 e8. f16 e f e d |
			c8. c16 d8 e d e |
			d4 e8. f16 e f e d |
			c8. c16 d8 e4 g8 |
			g a16 b a8 g e16 f e d |
			c8. c16 d8 e d e |
			d4 fis8 g a4~ |
			a8 g a2~ |
			a4 a8 b a g |
			e4 d4. d8 |
			d4 e16 fis g a g fis e d |
			c4 c8 c d4 |
			e4 d8 e c e |
			d4 e8. f16 e f e d |
			c8. c16 d8 e4 g8 |
			g8 a16 b a8 g e16 f e d |
			c8. c16 d8 e d e |
		}

		\alternative {
			{
				d4 fis8 g a4 |
			}
			{
				d,4 r2 \bar "|."
			}
		}

	}

	\layout {}
	\midi {}
}
