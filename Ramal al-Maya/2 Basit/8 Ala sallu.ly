\version "2.18.2"

\header {
	title = "Alā Sallū"
	subtitle = "Ramal al-Maya #8"
	composer = "Page 95"
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

		\repeat volta 2 {
			f4( e8 f) e16( f g8 f8) f \db e4( d16 e d e |
			c4) f8( g) a( g f16 g e f \db d4) r |
			f4( e8 f) e16( f g8 f) f \db e( d) d b16( c) |
			d4 r8 b16( c) d4 g16( a) f( g) \db e( f) d( e) c4 |
			f4 f8( g) f4 f8 f \db g( a g f) |
			e d f g a( g f16 g e f \db d4) r
		}

		f4( e8 f) e16( f g8 f) f \db e4( d |
		c) f8( g) a( g f16 g e f \db d4) r |
		f4( e8 f) e16( f g8 f) f \db e( d) d b16( c) |
		d4 r8 b16( c) d4 g16( a) f( g) \db e( f) d( e) c4 |
		f4 f8( g) f4 f8 f \db g( a g f) |
		e d e c d4 a'8. a16 \db a4 a |
		g16( a f8) bes a g4 f \db g8. g16 f4 |
		g8 a f g f2 \db g4 a16( bes a bes) |
		a4 g f e \db f r8 e16 e |
		f8 a g f e16( f e d c4) \db f8 f f g |
		f16( e d8) e f g a g f \db e4( d8) b16 b |
		c8 e d c b( a b) c \db d4( f |
		f8 e16 d) c8 f4 f( g8 \db f e16 d c8 d |
		f2.) a16( bes a bes \db a4) a~( |
		a16 bes a g f8) g a( b c4) \db a8 a bes a |
		g16( a) f8 f g a8. a16 g4 \db f( e8 f) |
		e8( g f) f e4( d16 e d e \db c8) f16( e) f8 g |
		a16( bes g a f g e f d4) g8. g16 \db g4 g |
		f bes8 a g16( a g8) f4 \db e4( d8) b16 b |
		c8 e d c b( a b) c \db d4( f |
		f8 e16 d c8) f4 f( g8 \db f e16 d c d |
		f2.) a16( bes a bes \db a4) a~( |
		a16 bes a g f8) g a( b c4) \db a8 a bes a |
		g16( a) f8 f g a8. a16 g4 \db f4( e8 f) |
		e( g f) f e4 d16( e d e \db c8) f16( e) f8 g |
		a16( bes g a f g e f d4) g8. g16 \db g4 g |
		f bes8 a g16( a g8) f4 \db e4( d) |
		c8( b c) d d2 \db b16( c b) a g4 |
		b c16( b c8) d4 e16( d e8) \db f4 g |
		d8( e f) a g( f16 e d8) e \db f8 e f g |
		f16( e) d8 e16( d) c8 d( e16 f g4 \db d4^\dc_\fine) r \bar "|."

	}

	\layout {}
	\midi {}
}
