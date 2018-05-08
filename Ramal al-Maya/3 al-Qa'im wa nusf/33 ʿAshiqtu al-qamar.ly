\version "2.18.2"

\header {
	title = "ʿAshiqtu al-Qamar"
	subtitle = "Ramal al-Maya #33"
	composer = "Page 122"
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
		\tempo "Moderato" 4 = 84

		\partial 2.

		c8 c b4 c \db

		\partial 1

		d4( c8 e) d4~( d16 e d c

		\repeat volta 5 {
			b4-\segno) b8 b b4 g \db b2.( d4 |
			c4) d8 d d4 d~ \db d8 d( c e) d4( c8 b |
			a4) a8 a a4 g \db f4( d e f16 e f8 |
			g4) g8 g g4 g~ \db g8 g( f a) g~( g16 a g f e d |
			c4) c( d) e \db f( d e f16 e f8 |
			g4) a8 a a4 a \db a4( b16 a b8 c4 b8 a |
			g4) g8 g a4 b \db c2 a8 c b16( c) a( b) |
			g8( f) bes a g4 f \db e( f8 a) g8~( g16 a g f e d |
			c4) c( d) e \db f( d e f16 e f8 |
			g4) a8 a a4 a \db a( b16 a b8 c4 b8 a |
			g4) g8 g a4 b \db c2 a8 c b16( c) a( b) |
			g8( f) bes a g4 f \db e( f8 a) g~( g16 a g f e d |
			c4) c( d) e \db f( d e f16 e f8 |
			g4) g8 g g4 g \db g2 d4( e |
			f) f8 e f( e16 f) g4 \db d4.( c8 b4 c |
		}

		\alternative {
			{
				d4-\fine) \bar "||" c'8 c b4 c \db d c8 e d4 d16 e d c |
			}
			{
				d,4 f8 f f4 f~ \db f8 f4( g8) f2~
			}
		}

		\repeat volta 2 {
			f4 f8 f f4 g \db f16( g f e d4 e f16 e f8 |
			g4) c8 bes a4 g \db f( e) g f16( g f e) |
			d8( c) f e d4 c \db b( c) d8( e f) g |
		}

		\alternative {
			{
				f4 f8 f f4 f~ \db f8 f4 g8 f2 |
			}
			{
				f4 f8 f f4 f~ \db f8 f4( g8) f2~ |
			}
		}

		f4 f8 f f4 g \db f16( g f e d4 e f16 e f8 |
		g4) c8 bes a4 g \db f( e) g f16( g f e) |
		d8( c) f e d4 c \db b c d2~ |
		d4 c'8 c b4 c \db d c8( e) d4~( d16 e d c-\ds) \bar "|."

	}

	\layout {}
	\midi {}
}
