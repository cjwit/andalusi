\version "2.18.2"

\header {
	title = "Muhammad qad jalla qadran"
	subtitle = "Ramal al-Maya #32"
	composer = "Page 120"
	meter = "Mizan al-Qaʾim wa Nusf"
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

% TRANSCRIPTION

\score {
	\relative d'' {
		\clef "treble"
		\key c \major
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Moderato" 4 = 80

		\partial 2.

		a2 a4( \db

		\partial 1

		g8) c( b c) a( b g a)

		\repeat volta 5 {
			a4 r8 a16( bes) a4 g \db f4.( g8) a16( bes a8 g4 |
			f4) r8 f16( e) f4 g \db a( b16 a b8 c4) d |
			d( c8 bes a4) g8( f \db e) g( f16 g f e d2~ |
			d4) a'2 a8( c \db b c) a4 g( f8 e |
			f a) g16( f e d c4-.) c~( \db c8 d c) d16( e) f2~ |
			f4 r8 f16( e) f4 g \db a16( bes a4.) g4( f16 g f e |
			d8 c d e f g) d4~ \db d8 c( b) c d2~ |
		}

		\alternative {
			{
				d4 a'2 a4 \db g8 c b c a b g a |
			}
			{
				d,4 r8 f16( e) f4 g \db a8( g f a) g2~ |
			}
		}

		\repeat volta 2 {
			g4 f8 f f4 g \db a8( g16 f e4 g f |
			e) g2 d8( c \db d) e( f g) f2~ |
		}

		\alternative {
			{
				f4 r8 f16 e f4 g \db a8 g f a g2 |
			}
			{
				f4 r8 f16( e) f4 g \db a8( g f a) g2~ |
			}
		}

		g4 f8 f f4 g \db a8( g16 f e4 g f |
		e) g2.~ \db g4 r c2 |
		c4( b8 c d4) d \db c16( d c b a2. |
		a4) r8 a16( bes) a4 g \db f8( g f16 g f e) d2~ |
		d4 r8 a'16( bes) a4 a( \db g8) c( bes16 c a b) g4( f8 e |
		g16 f e d c8) c c4 d8( c \db d) e( f g) f2~ |
		f4 r8 f16( e) f4 g \db a2 g4( f16 g f e |
		d8 c d) e f( g) d4~ \db d8 c( b c) d2~ |
		d4-\continue \bar "|."

	}

	\layout {}
	\midi {}
}
