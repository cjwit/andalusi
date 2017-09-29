\version "2.18.2"

\header {
	title = "Lamma bada minka al-qabūl"
	subtitle = "Rasd #26"
	composer = "Page 251"
	meter = "Mizan al-Qaʾim wa Nusf"
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
		\tempo "Moderato" 4 = 96

		\repeat unfold 5 {

			c'4 b8 c d4 c \db b16 c b a g4 a8 c b a |
			g4 r8 g g4 g~ \db g8 c4 b8 a2 |
			d4. e8 d4 c \db b16 c b a g4 a8 c b a |
			g4 r8 g g4 g~ \db g8 g fis a g2~ |
			g4 r8 g fis4 g \db a b a g |
			e16 f e d c8 d d4 d~ \db d8 c4 d8 e fis g a16 b |

		}

		\alternative {
			{
				g4. g8 fis4 g \db a b a g |
				e16 f e d c8 d e4 d~ \db d8 e16 d c8 e d2-\fine |
			}
			{
				g4. g8 fis4 g \db a b a g |
			}
		}

		\repeat unfold 2 {

			e16 f e d c8 d e4 d~ \db d8 c4 d8 e fis g a16 b |

		}

		\alternative {
			{
				g4. g8 fis4 g \db a b a g |
			}
			{
				g4. g8 fis4 g \db a b a g |
			}
		}

		e16 f e d c8 d e4 d~ \db d8 e16 d c8 e d2-\dc \bar "||"

	}

	\layout {}
	\midi {}
}
