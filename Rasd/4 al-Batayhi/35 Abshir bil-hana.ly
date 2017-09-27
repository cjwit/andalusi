\version "2.18.2"

\header {
	title = "Abshir bil-Hanā"
	subtitle = "Rasd #35"
	composer = "Page 261"
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
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Andantino" 4 = 66

		\repeat volta 2 {
			g8 g g g fis g a4~ \db a8 g c b a g a4 |
			a4. a8 a b a g~ \db g8 e4 fis16 g a8 g a4 |
			e16 f e d c4 c8 d e8. d16 \db e d e8 r e4 e fis8 |
			g8 a16 b a8 g e8. d16 c8 d~ \db d c4 e8 e4 e16 fis g a |
			g fis e d c4 c8 d e8. d16 \db e16 d e8 r e4 e fis8 |
			g a16 b a8 g e8. d16 c8 c \db d e d e d c d4-\fine
		}

		b'4 b b8 c d4 \db c8 b g a4 b8 g a |

		\repeat volta 2 {
			g4~ g8 a b a b g~ \db g a e d g4 a16 b c d |
		}

		\alternative {
			{
				c2 \breathe b8 c d4 \db c8 b g a4 b8 g a |
			}
			{
				c2 b8 c d4 \db c8 b g a4 b8 g a |
			}
		}

		g4~ g8 g g4~ g8 g~ \db g g fis g a g a4_\dc \bar "||"


	}

	\layout {}
	\midi {}
}
