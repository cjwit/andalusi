\version "2.18.2"

\header {
	title = "Fī Hālati al-Buʿdi"
	subtitle = "Ramal al-Maya #26"
	composer = "Page 114"
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
		\tempo "Presto" 8 = 184

		\repeat volta 3 {
			g4 g8 f e( d |
			c4 f8 e) d c |
			b4 c f8( e |
			f) g d4 b8 c |
			d4 b8 c d4 |
			r4 e8 e e e |
			f8 g4 f8 e4 |
			r4 e8 e e e |
			f g4 f8 e4~ |
			e a g8 a~ |
			a g a4 f8 g |
			a4 f f8 f~ |
			f g f16( e) d8 e f |
			g4 e e8 e~ |
			e f e d e f |
			g f e4 g8( a) |
			g f e( d c4 |
			f8 e) d c b4 |
			c f8 e f) g |
			d8.( c16) b8 c d4 |
			b8 c d4 r |
			d8 d d d d e |
			c4 f8 e f g |
		}

		\alternative {
			{
				d4 b8 c d4 |
			}
			{
				d4 b8 c d4~ |
			}
		}

		d4 d d |
		d8 d g4 d \bar "|."

	}

	\layout {}
	\midi {}
}
