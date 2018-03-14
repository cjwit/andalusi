\version "2.18.2"

\header {
	title = "Yā Maʿshara al-Fuqra"
	subtitle = "Ramal al-Maya #10"
	composer = "Page 98"
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
		\tempo "Andante" 4 = 66

		\partial 4

		a'4 |

		\repeat volta 5 {
			a16^\segno( bes a bes a4.) g8 f g \db a b? c4) |
			a8 a bes a g16( a) f8 f g \db a8. a16 g4 |
			g2 f16( e) d8 e f \db g4( f8) g |
			a8. a16 g4 f8( e16 f g8) f8 \db e( d) d( f) |
			g2 g4 f8 g \db a16( bes a g f8) f |
			g a a g f4 a16( bes a) g \db f4 a |
			a8( b c b a) g16( a) f8 g \db a( b c4) |
			a8 a bes a g16( a) f8 f g \db a8. a16 g4 |
			f e f g \db a16( g f e d4) |
			f8 d e c d4 b \db c d |
			b4 c16( b c8) d4 g16( a) f( g) \db e( f) d( e) c4 |
			f4 e f a8 a \db g4. e16 e^\coda |
		}

		\alternative {
			{
				f8 d e c d4( g \db d a') |
			}
			{
				f8 d e c d4( g \db d) b |
			}
		}

		c4 d2 c4 \db d( e |
		f) a a g( \db f) g |
		a16( g f e d4) f8( e f) g \db f16( e d8) e16( d) c8 |
		d4 b c16 b c8 d4~ \db d c |
		d e f a \db a g |
		f g a16 g f e d4 \db f8 e f g |
		f16 e d8 e16 d c8 d4 b \db c16( b c8) d4~( |
		d c) d( e \db f) a~ |
		a g( f) g \db a16( g f e d4) |
		f8 e f g f16( e) d8 e16( d) c8 \db d4 a'^\dsalcoda \bar "||"

		f8^\coda d e c d4( g \db d^\continue )

	}

	\layout {}
	\midi {}
}
