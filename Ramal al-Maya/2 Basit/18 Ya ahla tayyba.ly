\version "2.18.2"

\header {
	title = "Yā Āhla Yayyba"
	subtitle = "Ramal al-Maya #18"
	composer = "Page 106"
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
		\tempo "Allegretto" 4 = 108

		\partial 4

		a'4 |

		\repeat volta 4 {
			a4.^\segno( b8 c4) a \db g4( f8 e) |
			d4 c d8( e f e \db d4) a' |
			a2. a4 \db a4.( g8) |
			f4 g c8( bes a g \db f4) f |
			f2. g4 \db a2 |
			g4 f8( e) d2 \db g2 |
			g4( a g) f \db f4.( c8) |
			d8( e f a) g16( a f g e f d e \db c4) f |
			f2. g4 \db a2 |
			g4 f8( e) d4( c \db d) e |
			f4( e f) g \db d4. c8 |
		}

		\alternative {
			{
				b4( c) d8( e f e \db d4^\fine) \bar "||" a'4 |
			}
			{
				b,4( c) d8( e f e \db d4) f |
			}
		}

		\repeat volta 2 {
			f2. g4 \db a2 |
			g4 f8( e) d2 \db g2 |
			g4( a g) f \db f c |
		}

		\alternative {
			{
				d8( e f) a g( f e d \db c4) f |
			}
			{
				d8 e f a g f e d \db c4 f |
			}
		}

		f2. g4 \db a2 |
		g4 f8( e) d4( c) \db d( e) |
		f( e f) g \db d4. c8 |
		b4( c) d8( e f e \db d4) a'^\ds \bar "||"

	}

	\layout {}
	\midi {}
}
