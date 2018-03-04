\version "2.18.2"

\header {
	title = "Khātimu al-Russil"
	subtitle = "Ramal al-Maya #2"
	composer = "Page 83"
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
		\tempo "Adagio" 4 = 58

		\repeat volta 3 {

			a'4 a a a8 g \db c4~( c8 bes |
			a g bes) a g2 \db f4 e |
			f16( g f e) d4 e8( f g) g \db g2 |
			c4( bes8) a g2 \db c4( bes?8) a |
			g2 f4. g8 \db e f e d |
			c4 f8 f f4( g16 a g a \db f4) r |
			f8 g f g b b b c \db b16( c b a g4) |
			f8 g f g b b b c \db b16( c b a g4) |
			a b c d \db c a |
			b8 g fis g a2~ \db a4 r
		}

		\repeat volta 2 {
			a4 a a b8 c \db a4.( c8 |
			a4. a8 a a a) g \db f4( g) |
			a2 a16( bes a g f8 g \db c4~ c8) bes |
			a g bes a g2 \db f4( e) |
			f16( g f e) d4 e8( f g) g \db g2 |
			c4( bes8) a g2 \db c4( bes?8) a |
			g2 f4. g8 \db e f e d |
			c4 f8 f f4( g16 a g a \db f4) r |
			f8 g f g b b b c \db b16( c b a g4) |
			f8 g f g b b b c \db b16( c b a g4) |
			c4( b8) c d2 \db c4 d |
			c d c8 a b g \db a2 |
			c4 d c d \db c8 a b g |
			a2 d4( c8) c \db a2 |
			d4( c8) c a2 \db f |
			g4 a f g \db a c8 bes |
			a g f( c) f4 g \db a f8 g |
			a2 a \db g4 a |
			f4 g a c8 bes \db a g f( c) |
			f4 g a f8 g \db a4 r |

			% repeat of beginning

			a4 a a a8 g \db c4~( c8 bes |
			a g bes) a g2 \db f4( e) |
			f16( g f e) d4 e8( f g) g \db g2 |
			c4( bes8) a g2 \db c4( bes?8) a |
			g2 f4. g8 \db e f e d |
			c4 f8 f f4( g16 a g a \db f4) r |
			f8 g f g b b b c \db b16( c b a g4) |
			f8 g f g b b b c \db b16( c b a g4) |
			a b c d \db c a |
			b8 g fis g a2~ \db a4^\dc r_\fine
		}
	}

	\layout {}
	\midi {}
}
