\version "2.18.2"

\header {
	title = "Inna Yūmān"
	subtitle = "Rasd #7"
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

\score {
	\relative d' {
		\clef "treble"
		\key c \major
		\time #'(2 2 2) 6/4
		\tempo "Andantino" 4 = 72

		\repeat unfold 2 {

			d2 d4 c8 d \db e4 d |
			g2. fis8 g \db a2 |
			a4 bes8 a g4 f \db e8 d e f |
			g a g f e d e d \db c4 g'8 g |
			f16 g f e d4 g f8 e \db d4 c8 d |
			e2 e4 f \db g8. f16 a4 |
			g8. g16 f4 e d \db g8 a16 f g8 g16 a |
			f2. r8 f8 \db g8. a16 f4 |
			f8 g f g a2~ \db a4 r4

		}

		\repeat unfold 2 {

			d,2 d4 c8 d \db e4 d |
			g2. fis8 g \db a2 |
			a4 bes8 a g4 f \db e8 d e f |
			g a g f e d e d \db c4 g'8 g |
			f16 g f e d4 g f8 e \db d4 c8 d |
			e2 e4 f \db g8. f16 a4 |
			g8 g f4 e d \db g8 a f g |
			f2 r2 \db g4 fis8 g |
			a4. c8 a4. c8 \db a4 r8 a8~ |
			a g fis g a2~ \db a4 r4 |
			a4 bes8 a g4. e16 fis \db g16 a g8~ g e16 fis |
			g a g8 r8 g e4 d \db g2 |
			a4 g f8 g f e \db d8. e16 c4 |
			d8 e d e f e f g \db f4 g |
			g fis8 g a4. c8 \db a4. c8 |
			a4 r8 a4 g8 fis g \db a2 |
			a4 bes8 a g4. e16 fis \db g16 a g8~ g e16 fis |
			g a g8 r8 g e4 d \db g2 |
			a4 g f8 g f e \db d8. e16 c4 |
			d8 e d e f e f g \db d4 b |
			c4 d2 e4 \db f e |
			g8 a g f e d e d \db c4 g'8 g |
			f8. e16 d4 g f8 e \db d4 c8 d |
			e2 e4 f \db g8. f16 a4 |
			g8. g16 f4 e d \db g8 a16 g f8 g16 a |
			f2. r8 f8 \db g8. a16 f4 |
			f8 g f g a2~ \db a4 r4-\fine |

		}

		\repeat unfold 2 {

			c4 d8 c b a b c \db d e d b~ |
			b8 b4 a8 b16 c b a g4 \db a b |
			c d8 c b a b c \db d e d b~ |
			b8 b4 a8 g4 b \db b2~ |
			b8 a g a b16 c b a g8 g \db a g a b |
			d16 c b a g4 a8 g a b \db g4 a8 b |
			g4 e d e16 fis g a \db g4 e8 d |
			g4. a8 b c d4 \db b8 b c e |
			d16 c b a g8 a b16 c b a g8 g \db a8 g a e' |

		}

		\alternative {
			{ d8 c16 d b c a b g4 r4 \db a b | }
			{ d8 c16 d b c a b g4 r4 \db a b | }

		}

		c4 d8 c b a b c \db d e d b~ |
		b8 b4 a8 b16 c b a g4 \db a4 b |
		c4 d8 c b a b c \db d e d b~ |
		b8 b4 a8 g4 b \db b2~ |
		b8 a g a b16 c b a g8 g \db a g b a |
		g2._\dc r4 \db r2 

		\bar "||"

	}
	\layout {}
	\midi {}
}
