\version "2.18.2"

\header {
	title = "Huwwa al-Nabī al-Muʿadhdhamu"
	subtitle = "Ramal al-Maya #14"
	composer = "Page 102"
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
		\tempo "Moderato" 4 = 80

		\partial 4

		a'4 |

		\repeat volta 5 {
			a8^\segno( b g4 c) b8( a) \db g4( f8 e |
			d4 c d8 e f e \db d4) a'8 a |
			a2. a4 \db a4.( g8 |
			f4 g a8 bes a g \db f4) f |
			f8( g f2) g4 \db a2 |
			g4 f e8( g) f( e) \db d4( c) |
			d e f f~ \db f g( |
			f) a g8( f16 e d4) \db f8( e f) g |
			f d e c d4 b \db c16( b c8) d4 |
			b c16( b c8) d4 g8 f16( g) \db e( f) d( e) c4 |
			f e f a8 a \db g4. e16 e |
		}

		\alternative {
			{
				f8 d e c d4( g \db d-\fine) \bar "||" a' |
			}
			{
				f8 d e c d4 g \db d b( |
				c16 b c8) d2 c4 \db d( e) |
			}
		}

		f4 a a g( \db f) g |
		a16( g f e d4) f8( e f) g \db f16( e) d8 e16( d) c8 |
		d4 b c16 b c8 d4~ \db d c |
		d e f a \db a g |
		f g a16 g f e d4 \db f8 e f g |
		f16 e d8 e16 d c8 d4 b( \db c16 b c8) d4~ |
		d c d( e \db f a) |
		a g( f8 g) f( e) \db d4 a'^\ds \bar "||"

	}

	\layout {}
	\midi {}
}
