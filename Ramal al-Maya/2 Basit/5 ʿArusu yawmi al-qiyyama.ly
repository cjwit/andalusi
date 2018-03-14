\version "2.18.2"

\header {
	title = "ʿArūsu Yawmi al-Qiyyāma"
	subtitle = "Ramal al-Maya #5"
	composer = "Page 90"
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
		\tempo "Adagio" 4 = 60

		\partial 4

		a'4 |

		\repeat volta 5 {
			a2 a8 g c a \db g( a g) f |
			e4 g8 f16( e) d8 c d e \db f g e16( d c8) |
			d4( e) f( a8) a \db g4. e16( g) |
			f8 d e c d2 \db e16( f e) f g4 |
			f e16( f e f) d4 c8( b \db c8 d) d4~ |
			d d8 d d4( c8 e) \db d16( c b a g4) |
			a'4 b c8( b) d d \db c4 a8 a |
			a4( g f e \db f) g |
			a4( b) c8( b d) d \db c4( a8) a |
			bes8 a c bes16( a) g8 f16( e) f8 g \db a8. a16 g4 |
			f8( e16 f g8) f e4 d~ \db d e16( f e d |
			c4) d8 e f4( e \db f g) |
			c4. b8 c8 a bes a \db g e f e |
		}

		\alternative {
			{
				f8( d e c) d4( g \db d) \bar "||" a'4 |
			}
			{
				f8( d e c) d4( g \db d) d8( e)
			}
		}

		\repeat volta 2 {
			f4( e f g8) g \db a4. g16( a) |
			f16( e) d8 e f g f16( e) f8 g \db a8. a16 g4 |
			f8( e16 f g8) f e4 d~ \db d8 d e16( f e d |
			c4) d8 e f4( e \db f) g |
			c4. b8 c a bes a \db g e f e |
		}

		\alternative {
			{
				f8 d e c d4( g \db d) d8 e |
			}
			{
				f8 d e c d4 g \db d d8( e) |
			}
		}

		f4( e f g8) g \db a4 r8 g16( a) |
		f16( e) d8 e f g f16( e) f8 g \db a8. a16 g4 |
		f8( e16 f g8) f e4 d~ \db d e16( f e d |
		c4 d8) e f4( e \db f) g |
		c4. b8 c a bes a \db g e f e |
		f( d e c) d4( g \db d) a'^\segno \bar "||"

	}

	\layout {}
	\midi {}
}
