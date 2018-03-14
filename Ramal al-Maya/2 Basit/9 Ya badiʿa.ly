\version "2.18.2"

\header {
	title = "Yā Badīʿ"
	subtitle = "Ramal al-Maya #9"
	composer = "Page 97"
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

		\repeat volta 2 {

			a'2.( b8) c \db a4.( c8 |
			a4~ a16 bes a bes a4. g8 \db f4 g) |
			a2 a8( g f) g( \db c4) r8 bes |
			a16( bes) g8 bes a g2 \db e16( f) g8 f16( g) e( f) |
			d2 e16( f e f e4) \db e4 f |
			g f8 a g4 g \db g4. g8~ |
			g4 a8 b? c4 b8 a \db g4. f8 |
			e4. f8 d4 r8 e16 f \db g8 f16( e) d8 c |
			b4( c) d2 \db c4 d~ |
			d c d( e \db f g) |
			d8 e f g a16( g f e d8) e \db f( e f) g |
			f d e c d4( g \db d-\fine) r |

		}

		\repeat volta 2 {
			f4( e8 f e g f) f \db e4( d) |
			c f8 g a( g f16 g e f \db d4) r |
			d'2~( d8 c e) d \db c16( d c b a4 |
			b f'8 e) d2~ \db d4 r |
		}

		f,4( e8 f e g f) f \db e4( d) |
		c f8 g a16( g f e d4) \db g( f8 e) |
		d4 c d c \db d( e |
		f e f e \db f g)
		d8( e) f g f2~ \db f4 f8 f |
		g( a f g) f2~ \db f4-\dc r \bar "|."

	}

	\layout {}
	\midi {}
}
