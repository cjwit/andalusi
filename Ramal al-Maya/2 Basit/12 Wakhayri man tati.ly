\version "2.18.2"

\header {
	title = "Wakhayri man Tātī"
	subtitle = "Ramal al-Maya #12"
	composer = "Page 100"
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
		\tempo "Andantino" 4 = 76

		\partial 4

		e8( f) |

		\repeat volta 3 {
			g2. g4 \db g~ g |
			g2 d4.^\error( e8 \db c2) |
			f8 g f e d2 \db e2 |
			e4 f g2 \db f8 d e f |
			g4. g8 g f g4 \db a( b) |
			c8 b d4 d c8( a \db b g fis) g |
			a2. fis8 g \db a2~ |
			a4 fis8 g a4. g8 \db b2 |
			c4. b8 d2 \db c4 a |
			b8( g fis) g a2~ \db a4 r |
			a8 a bes a g4 f \db g8. g16 f4 |
			f8 f f f f f f g \db f( e16 d c4) |
			f4. g8 f4. g8 \db f4. g8 |
			f8 g f g a bes a g \db f e f g |
			a2( g4) c, \db d2~ |
			d4 g g( f \db e d |
			e16 f e d c4) f4. g8 \db f4. g8 |
			f4. g8 f g f g \db a bes a g |
			f e f g a2( \db g4) g |
			a4( b c) d \db d c8( a |
			b g fis) g a2~ \db a4 r |
			a8 a bes a g4( f) \db g8. g16 f4 |
			f8 g f g b b b c \db b16( c b a g4) |
			a4 b c d \db c a |
		}

		\alternative {
			{
				b8 g fis g a2 \db r4 e8 f |
			}
			{
				b8 g fis g a2~ \db a4^\continue
			}
		}

	}

	\layout {}
	\midi {}
}
