\version "2.18.2"

\header {
	title = "Bi-Llah Yā Hādī"
	subtitle = "Ramal al-Maya #28"
	composer = "Page 116"
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
		\tempo "Andante" 4 = 60

		\partial 2

		b,4( c16 b c8)

		\repeat volta 5 {
			d1~( \db d16 e d c b4) d4( c8 e) |
			d16( e d c b8) b b c b4 \db r8 b4 b8 c4 b8 a |
			g4 f'8 f f4 g \db b( c16 d c8 d4) d |
			c8.( bes16 a2 g4 \db c16 bes a g f4) c'( b8 c) |
			a4 r8 a a8. a16 a4( \db g8) c( b16 c) a( b) g8( f) a8. a16 |
			g4 e8 e e16( f g8) f4 \db e1 |
			g4( f8) e d( c) e4~ \db e8 e4( f g4 f |
		}

		\alternative {
			{
				e4) e8 e e4 g \db f16( g f e d4) b c16 b c8 |
			}
			{
				e4) e8 e e4 g \db f16( g f e d4) e4 e |
			}
		}

		\repeat volta 2 {
			f4.( g8 e4) e~ \db e8 g( f) a g~( g16 a g f |
			e4) g2 f4 \db e4( c e) e |
			f4.( g8 e4) e \db f( e) e e |
			f4.( g8 e4) g4~ \db g8 g4( f8) bes( a g16 a g f |
			e4) g2 f4 \db e16( f) e4. g4 f |
		}

		\alternative {
			{
				e4 e8 e e4 g \db f8 e16 d c4 e e |
			}
			{
				e4 e8 e e4 g \db f8 e16 d c4 e e
			}
		}

		f4.( g8 e4) e~ \db e8 g( f a) g4~( g16 a g f |
		e4) g8 g g4 f \db e16( f e4.) e4 e |
		f4.( g8 e4) e \db f( e) e e |
		f4.( g8 e4) g~ \db g8 g4( f8) bes( a g16 a g f |
		e4) g2 f8( e) \db d2( b4 c |
		d-\continue)

	}

	\layout {}
	\midi {}
}
