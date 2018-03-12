\version "2.18.2"

\header {
	title = "Khayru al-Bashar"
	subtitle = "Rubba Layl #6"
	composer = "Page 92"
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
		\tempo "Andante" 4 = 60

		\repeat volta 5 {

			d4( e16 f e f e8 g f4) \db e( d |
			c8) f16( e) f8 g a16( bes g a f g e f \db d4) a'16( bes a bes |
			a4) g4( f8 e16 f g8) f8 \db e4( d8) d |
			e16( d) c8 d e f8.( e16 d4 \db e16 f e8 f) a |
			g4. a8 a g f e16( f) \db g4. f8 |
			g f g4 a b16( a b8) \db c8( b) d d |
			c4 a g( f8) g \db a16( g f e d4) |
			f4 e16( f e f) g4( f8) g \db a8. a16 g4 |
			f8( e16 f g8) f e( d d c) \db d( e16 f) g8 f |

		}

		\alternative {
			{
				e8^\coda f d g f e d e \db d g f16( e32 d c8)
			}
			{
				e8^\coda f d g f e d e \db d4 r4
			}
		}

		\repeat volta 2 {

			a'4. a8 a4.( g8 \db b4. c8 |
			b8 a g g a g a4) \db f8. f16 g4 |
			f8 d e f g4 r8 e16( f) \db g8. f16 g4 |
			a4 b c8( b) d4~ \db d c( |
			a8) a bes a g4 r8 e16( f) \db g a g8 r8 e16( f) |
			g a g8 r8 g f4 a~ \db a8 g c16( bes a g |
			f4) a a8( b? c) b \db a( g a g |
			f4) r8 f8 e16( f) e( f) g4 \db c4( b8 c) |
			a8( g a g) f2~ \db f4 r |
			f4. g8 f4 r8 e \db f g f e |
			d16( e) c8 d e f4 r8 f \db e f g4

		}

		a4. a8 a4.( g8 \db b4. c8 |
		b8 a g g a g a4) \db f8. f16 g4 |
		f8 d e f g4 r8 e16( f) \db g8. f16 g4 |
		a4 b c8( b) d4~ \db d c( |
		a8) a bes a g4 r8 e16( f) \db g a g8 r8 e16( f) |
		g a g8 r8 g f4 a~ \db a8 g c16( bes a g |
		f4) a a8( b? c) b \db a( g a g |
		f4) r8 f8 e16( f) e( f) g4 \db c4( b8 c) |
		a8( g a g) f2~ \db f4 r |

		\repeat volta 2 {

			f4. g8 f4 r8 f \db g8. g16 f4 |

		}

		\alternative {
			{
				f8 g f g a4 c8 bes \db a16^\accidentalerror( bes? a g) f4 |
			}
			{
				f8 g f g a2~ \db a4 r |
			}
		}

		d,2~( d16 e d e c4) \db d8( e16 f g8) f |
		e( f d) g f e d e \db d g f16( e32 d c8^\dcalcoda) \bar "||"

		e8^\coda f d g f e d e \db d4^\continue \bar ""


	}

	\layout {}
	\midi {}
}
