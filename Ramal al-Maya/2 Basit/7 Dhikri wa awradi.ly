\version "2.18.2"

\header {
	title = "Dhikrī wa Awrādī"
	subtitle = "Ramal al-Maya #7"
	composer = "Page 94"
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
		\tempo "Andante" 4 = 63

		\partial 4

		f4

		\repeat volta  5 {
			f2.^\segno( g16 a g a \db f4) f8 f |
			g( a f g) a16( bes a g f4) \db g8. g16 f4 |
			g8 a16( g) f8 g f2 \db g8. g16 f4 |
			f8 g16( a) f8 g a4. b16 b \db c8 a bes a |
			g f16 a g4 f8( e16 f g8) f \db e d e16( d) c8 |
			d4 d8( e16 f g8 f16 e) d8 c \db b4( c16 b c8) |
			g'4( f16 g f e d8) d c d \db e16( f e8) f16( e) f8 |
			g2 d4( c \db b8 c) d4~ |
			d4. g8 f g d4 \db c4 b8 c |
			d e f g a16( g f e d8) e \db f( e f) g^\coda |
		}

		\alternative {
			{
				f16( e) d8 e16( d) c8 d( e16 f g4 \db d f)
			}
			{
				f16( e) d8 e16( d) c8 d( e16 f g4 \db d8) e16 f g4
			}
		}

		\repeat volta 2 {
			g4( f16 g f e d8) d c d \db e16( f e8) f16( e f8) |
			g2 d4( c \db b8 c) d4~ |
			d4 r8 g f g d4 \db c b8 c |
			d e f g a16( g f e d8) e \db f8( e f) g |
			f16( e) d8 e16( d) c8 d4( g \db d8) e16 f g4 |
		}

		g4( f16 g f e) d4( c8) d \db e16( f e8) f16( e f8) |
		g2 d4( c \db b8 c) d4~ |
		d4. g8 f g d c \db f4 f^\dsalcoda \bar "||"

		f16^\coda( e) d8 e16( d) c8 d8( e16 f g4 \db d) r \bar "|."


	}

	\layout {}
	\midi {}
}
