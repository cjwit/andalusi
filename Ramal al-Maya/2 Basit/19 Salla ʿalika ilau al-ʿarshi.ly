\version "2.18.2"

\header {
	title = "Salla ʿAlīka ilau al-ʿArshi"
	subtitle = "Ramal al-Maya #19"
	composer = "Page 107"
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
		\tempo "Allegretto" 4 = 112

		\partial 4

		f4~ |

		\repeat volta 3 {
			f4^\segno f2 g4 \db d2 |
			g4 f e8( f e d \db c4) f4~ |
			f f2 g4 \db d2 |
		}

		\alternative {
			{
				c4 d f2~ \db f4 f~ |
			}
			{
				c4 d f2~ \db f4 f~ |
			}
		}

		f4 f2 g4 \db a2 |
		f4 g a8( bes a g \db f4) f8( e

		\repeat volta 2 {
			f4) f2 g4 \db a4.( g8) |
			f4( g) a( b \db c) a |
			a a2 f4 \db g4( f) |
		}

		\alternative {
			{
				a4 g a8( bes a g \db f4) f8 e |
			}
			{
				a4 g a8 bes a g \db f4 f8( e) |
			}
		}

		f4 f2 g4 \db f2 |
		f4 g a b \db c a |
		a8( bes) a2 f4 \db g( f) |
		a g a8( bes a g \db f4) g |
		g d( c) d \db f2 |
		g8( f g) a f2~ \db f4 g |
		g d( c) d \db f2 |
		e4 d e8( f e d \db c4) c |
		c4 d( c) d \db f2 |
		f4 f e f \db g g |
		g d( c) d \db f2 |
		g8( f g) a f2~ \db f4 f8( e) |
		f8( e) f( e f4) e \db f2 |
		g8( f g) a g( a g f \db e4) g |
		g g2 f4 \db g2 |
		a4 a a8( bes a g \db f2) |
		a8( g a) bes a( g f4) \db g8( f g) a |
		g( f e4) f8( e f) g \db f( e d4) |
		e8( d e) f e( d c4) \db d4 e |
		c4 d e16( f g a g f e d \db c4) f4~ |
		f g a2 \db g |
		c2. b4 \db c a |
		bes4 g a8( bes a g \db f4_\fine) \bar "||" f4^\ds \bar "|."

	}

	\layout {}
	\midi {}
}
