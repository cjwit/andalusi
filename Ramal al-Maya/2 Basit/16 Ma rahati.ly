\version "2.18.2"

\header {
	title = "Mā Rāhatī"
	subtitle = "Ramal al-Maya #16"
	composer = "Page 104"
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
		\tempo "Moderato" 4 = 92

		\partial 4

		f4~ |

		\repeat volta 5 {
			f4^\segno f2 d4 \db e8( g f16 g e f |
			d4) f f f~ \db f d |
			e8( g f16 g e f d4) b \db c16( b c8) d4 |
			b c16( b c8) d4 e \db f a |
			a g( f8 g) f( e) \db d4 a'~ |
			a a8( b c4) a \db g4( e8 f |
			g4 f8 e d4 e \db f8 g f a |
			g2) d4. c8 \db e4 r |
			e8 f g4 e f \db g4 r |
			b,( c16 b c8) d4( e \db f) d |
			e c d g \db f g |
			d4.( e8 c4) a' \db a g( | %slur
		}

		\alternative {
			{
				f4) d f4.( g8 \db f4-\fine) \bar "||" f4 |
			}
			{
				f4 d f4. g8 \db f4 a~
			}
		}

		\repeat volta 2 {
			a4 a8( b c4) a \db g e8( f |
			g4 f8 e d4 e \db f8 g f a |
			g2) d4. c8 \db e4 r |
		}

		\alternative {
			{
				e8 f g4 e f \db g a |
			}
			{
				e8 f g4 e f \db g r |
			}
		}

		b,4( c) d( e \db f) d |
		e c d g \db f g |
		d4.( e8 c4) a' \db a g( |
		f) d f4.( g8 \db f4) f^\segno \bar "||"
	}

	\layout {}
	\midi {}
}
