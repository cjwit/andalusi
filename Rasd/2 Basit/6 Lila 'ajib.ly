\version "2.18.2"

\header {
	title = "Līla ʿAjīb"
	subtitle = "Rasd #6"
	composer = "Page 222"
	meter = "Mizan Basit"
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
		\tempo "Andantino" 4 = 69

		\partial 4 { g4 }

		\repeat volta 5 {

			a2~ a16 bes a g f4 \db g8 a g f |
			e d e c d2~ \db d4 r4 |
			d4~ d16 e c8 d e16 f g8 f \db e4 c |
			d4. e8 f g4 f8 \db e4 d |
			e4 f g a~ \db a b8 c |
			a4 r8 f g a g f \db e16 f e d c8 d |
			e8 d e16 d c8 d2 \db g4~ g8 f~ |
			f e4 d8 c4 e \db e16 f e d c8 d |
			e8 d e c d e e16 f g a \db g f e d c8 d |
			e4 g8 f16 e d8 c d4 \db e8 f g4 |
			e4 e16 f e d c4 a' \db g16 f e d c8 d |

		}

		\alternative {
			{ e8 d e16 d c8 d4 g \db d_\fine \bar "||" g | }
			{ e8 d e16 d c8 d4 g \db d d8 e | }
		}

		\repeat volta 2 {

			f8 g f2 f8 e \db f e f e | f g f16 e d8 e4 f \db g a |
			a g f8 g f e \db d4 g~ | g f e d \db c c |
			d8 c d e c4 d8 e \db f g f16 g e f | d8 c d16 e f g f4 r8 f8 \db g8. a16 f4 |

		}

		\alternative {
			{ g8 a f g f2( \db c4) d8 e | }
			{ g8 a f g f2 \db c4 d8 e | }

		}

		f8 g f2 f8 e \db f e f e | f g f16 e d8 e4 f \db g a |
		a g f8 g f e \db d4 g~ | g f e d \db c c |
		d8 c d e c4 d8 e \db f g f16 g e f | d8 c d16 e f g f4 g \db a2~ |
		a16 bes a g f8 f g a g f \db e16 f e d c8 d | e8 d e16 d c8 d2 \db g4~ g8 f~ |
		f8 e4 d8 c4 e8 e \db e16 f e d c8 d | e d e c d e e16 f g a \db g f e d c8 d |
		e4 g8 e16 e d8 c d4 \db e8. f16 g4 | e4 d16 f e d c4 a'8 a \db g16 f e d c8 d |
		e8 d e16 d c8 d4 g \db d g_\dc

		\bar "||"

	}

	\layout {}
	\midi {}
}
