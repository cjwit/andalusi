\version "2.18.2"

\header {
	title = "Bādir wa Sallim"
	subtitle = "Ramal al-Maya #17"
	composer = "Page 105"
	meter = "Mizan Basit"
	copyright = "Transcription adapted from Yūnis al-Shāmī, Nūbāt al-Andalusiyya al-Maghribiyya: Nūba Ramal al-Maya (1984)"
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
		\tempo "Allegretto" 4 = 100

		\partial 4

		c4 |

		\repeat volta 2 {
			d4( c d) e \db f( g) |
			a8( g f) a g2~ \db g4 r |
			f2 e4( f) \db d2 |
			f8( f16 e d4) e f \db g2~ |
			g4 e8 f g2 \db r4 e8 f |
			g2 c4. b8 \db c a bes a |
			g4 f8 e f d e c \db d( c) d e |
			f8( e f) g f16( e) d8 e c \db d2 |
			e16( f e8) f4 g a8 a \db g4. e16 e |
			f8 d e c d4( g \db d) r |
			e f16( e f8) g4 a8 a \db g4. e16 e |
			f8 d e c d4( g \db d) r |
			e f16( e f8) g2 \db b,4 c16( b c8) |
			d2 e4 f \db g a |
			g f8( e) d g f a \db g8( f16 e d4) |
			g4( f8 e) d4 c8 c \db d4 e |
			f4( g16 a g8) a4 a \db a a |
			a2. g4 \db f8 f16( e d4) |
			e4( f) g2~ \db g4 e8 f |
			g2. e8 f \db g2 |
			c4. b8 c a bes a \db g4 f8 e |
			f8 d e c d( c) d e \db f( e f) g |
		}

		\alternative {
			{
				f16( e) d8 e16 d c8 d8( e16 f g4 \db d) c |
			}
			{
				f16( e) d8 e16 d c8 d8( e16 f g4 \db d) r \bar "|."
			}
		}
	}

	\layout {}
	\midi {}
}
