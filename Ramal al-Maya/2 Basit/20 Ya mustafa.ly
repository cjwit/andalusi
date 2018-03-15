\version "2.18.2"

\header {
	title = "Yā Mustafa"
	subtitle = "Ramal al-Maya #20"
	composer = "Page 108"
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
		\time 3/4
		\tempo "Allegro" 8 = 120

		\partial 2

		c'8 c4 b8

		\repeat volta 3 {
			c8( a b g a4) |
			r8 a4 a a8 |
			a4 b g8 a8~ |
			a b c4 b8( a) |
			g4 e8( f) g4 |
			a8( b) c4 b8( a |
			g4) a8 a g a |
			a g a b c d |
			c bes a g bes a |
			g f g f e d |
			f e d c f e |
			d c d16( e f) g f8 f~ |
			f f4 g8 f( e16 d |
			c4) f8( g a16 bes a g |
			f8) f4 f g8 |
			a4( f8 g a16 bes a g |
			f8) f4 f( g8) |
			a4 g8( f16 e) d4 |
			a'4 g f8( e) |
			d d e f g4~ |
			g c8 c b c |
			c b d4~( d16 e d c |
			b4) b8 d c b |
			b8( c b16 a g8) g4 |
			 b g8 b4 d8 |
		}

		\alternative {
			{
				c4 c8 c4 b8 |
			}
			{
				c8-\continue
			}
		}

	}

	\layout {}
	\midi {}
}
