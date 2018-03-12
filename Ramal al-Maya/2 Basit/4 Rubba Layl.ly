\version "2.18.2"

\header {
	title = "Sallū Yā ʿIbād"
	subtitle = "Rubba Layl #4"
	composer = "Page 88"
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

		\repeat volta 3 {

			c8.( b16 a4 b c8) c \db d4( e) |
			f8 d e c d2~ \db d4 r |
			e16( f e f e4) e r8 e16( f) \db g8( f16 e d8) c |
			b4( c) c8. c16 d4 \db c16( b) a8 b8 c |
			d4. d8 d e c4 \db d8( e f) e |
			f d e c d4( g \db d) r |
			e16( f e f e f e f e2) \db e8( f g4) |
			f8( d e f) g4.( e16 f \db g8 f g4) |
			f8 d e f g f g4 \db f8. f16 g4 |

		}

		\alternative {
			{
				f8 d e f g g f a \db g( f16 e d4)
			}
			{
				f8 f f g a4 a~( \db a~ a16 bes a g |
				f4) f8 g a16( g a b c4) \db a8 a c bes16( a) |
			}
		}

		g8 f16( e) f8 g a8. a16 g4 \db f8. f16 e4 |
		f8 d e c d2~ \db d4 r |
		a'4( bes8) a g16( a g f e4) \db f8( e f) a |
		g16( a g f e8) e f a g f \db e f e8. e16 |
		e4 e16( f e) f e4 c8 b \db c4 c8. e16 |
		e4 f8 a g4~( g16 a g f \db e4) r |
		f8 d e f g f g4 \db f8 e d8. d16 |
		c4 d8 e f f f g \db f16( e32 d c8) d16( e f) g |
		f2. a8 a \db a2~( |
		a16 bes a g f8) g a4( b8^\accidentalerror c \db a4 g |
		f16 g f e d4) e f \db g a( |
		g f8) a g2~ \db g4 f8 d |
		e f g f g f f g \db a16( bes a g f8) f |
		g8 a f g f2 \db c'4. b8 |
		c a bes a g4 f8 e \db f d e c |
		d d16( e) f8 g a16( g f e d8) d16( e) \db f8( e f) g |
		f8 d e c d( e16 f g4 \db d^\fine) r |

		\repeat volta 2 {
			d4 d d8( c) d e \db f16( g f e d4 |
			e8) e f a g2~ \db g4 r |
			e16( f) g8 f e d c d e \db f16( g f e d4 |
			e8) e f a g2~ \db g4 r8 c |
			c2 c16( d c b a4) \db a b~ |
			b4 a8. a16 b4 g \db a8 f( e) f |
			g2. r8 f \db g a a g |
			f2 g8. g16 f4 \db f8 g f g |
			b b b c b16( c b a) g4 \db a b |
			c16( d c b a4) bes8 a bes a \db bes a c bes16( a) |
			g8 f16( e) f8 g a8. a16 g4 \db f4 e |
			f8 d e c d2~ \db d4 r |
			a'4( bes8) a g16( a g f e4) \db f8( e f) a |
			g16( a g f e8) e f a g f \db e f e16( f) e( f) |
			e4 e16( f) e( f) e4 c8 b \db c16( b c8) c e |
			e4 f8 a g4~( g16 a g f \db e4) r |
			f8 d e f g f g4 \db f8 e d8. d16 |
			c4 d8 e f f f g \db f16( e32 d c8) d16( e f) g |
			f2~ f8 a a a \db a2~( |
			a16 bes a g f8) g a4( b8 c \db a4 g |
			f16 g f e d4) e f \db g a8 a |
			g4 f8 a g2~ \db g4 f8 d |
			e8 f g f g f16( e) f8 g \db a16( bes a g f8) f |
			g a a g f2 \db c'4. b8 |
			c8 a bes a g4 f8 e \db f d e c |
			d d16( e) f8 g a16( g f e) d8 e \db f( e f) g |
			f8 d e c d( e16 f g4 \db d^\dc) r |

		}

	}

	\layout {}
	\midi {}
}
