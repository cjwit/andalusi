\version "2.18.2"

\header {
	title = "Sallū Yā ʿIbād"
	subtitle = "Ramal al-Maya #3"
	composer = "Page 86"
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
		\tempo "Adagio" 4 = 58

		d4 d d8 d g4 \db d4 r |

		\repeat volta 2 {
			c8( b c d) d4. d8 \db d4. d8 |
			d4. d8 d4. d8 \db c8. b16 a4 |
			b8( c f) e d2~ \db d4 r |
			c4( b8 c) d2~( \db d8 c e) d |
			c16( d c b a8) a b4. b8 \db b8 c b16( a g8) |
			b8 b b c b16( c b a g4) \db a4. g8 |
			b16( c b c b4) c8( b) c( b) \db c4 d8 c |
			b8( a b) c d2~ \db d4 f |
			f2~( f4. g8 \db e16 f e f d4) |
			e8( d e) c d2~ \db d4 r |
			c4( b8 c) d2~( \db d8 c e) d |
			c16( d c b a8) a b4. b8 \db b c b16( a g8) |
			b8 b b c b16( c b a g4) \db a4. g8 |
			b16( c b c b4) c8( b) c( b) \db c4 d8 c |
			b8( a b) a g2~ \db g4 r |
			c8( b c) d (d2~ \db d~ |
			d2 e16 f e d c4) \db f8 e16( f g8) f |
			e16( f) d8 e f g4 a8 a \db g a g f |
			e d e16( f) d( e) c2 \db f4. g8 |
			f1 \db g8 a f4 |
			g8 a f g a16( bes a g f4) \db g8 a f4 |
			g8 a f g f2~ \db f4 r |
			a4. a8 a4. g8 \db b4. c8 |
			b a b a g2~ \db g4 r |
			f e f g8 g \db a4( g) |
			f8( e f) a g2~ \db g4 r |
			f e f g8 g \db a4 g |
			f8( e f) a g2( \db a16 g f e d4) |
			c8( b c) d d2~( \db d |
			d e16 f e d c4) \db f8 e16( f) g8 f |
			e d e f g4 a8 a \db g a g16( a) f8 |
			e8 d e16( f) d( e) c2 \db f4. g8 |
			e4( d e16 f e d c8) c \db d c e d |
			c2. a'8. a16 \db g4 a16( b c) d |
			c4 a8 g c4 r8 d, \db e f g4 |
			e8^"Alternate provided in the score" e f a g16( f e d c8) c \db d4. e16( g) |
			f8 d e16( d) c8 d( e16 f g4 \db d4) r \bar "|."
		}
	}

	\layout {}
	\midi {}
}
