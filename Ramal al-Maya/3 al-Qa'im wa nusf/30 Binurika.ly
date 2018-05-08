\version "2.18.2"

\header {
	title = "Binūrika"
	subtitle = "Ramal al-Maya #30"
	composer = "Page 118"
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
		\tempo "Andantino" 4 = 76

		\partial 2.

		a4~ a a(

		\repeat volta 3 {
			\partial 1
			g8^\segno) c( b) c a16( b g8 a4~ |
			a4) r8 a16( bes) a4 g( \db f e f) g |
			c2~ c8 r8 c4~ \db c8 c4 b8 d4( c16 d c b |
			a4.) a8 a4 g( \db f e f) a4 |
			g2. g4~ \db g8 g( f a g2 |
			g4) a4 a16( bes a8) g4( \db f8 g) f( e) d( c d e |
			f4) f8 g f16( g f e) d8( c \db d) e( f) g f2~ |
			f4 r8 f16 e f4 g \db a8( g f) a g2~ |
			g4 r8 f16 e f4 g \db a8( g f) a g2~ |
			g4 r8 f16( e) f4 g \db a8( g16 f e4) g( f |
			e4) g2 a4( \db g16 f e d c4) d4( e8 f |
			g4) f8( e d) c d( e \db f4 e) g( f |
			e) d4.( c8) d8( e \db f4 e) g( f |
			e) d2. \db r8 d4 d8 c( b) c4 |
			d8( c) d e f4 a \db g4( f8 e) d( c f) e |
		}

		\alternative {
			{
				\partial 1
				d4-\fine \bar "||" a'4 a a
			}
			{
				d,4 f2 f4~ \db f8 f4 g8 f2~
			}
		}

		\repeat volta 2 {
			f4 c~ c d8( c \db d e f g) f2~ |
		}

		\alternative {
			{
				f4 f2 f4~ \db f8 f4 g8 f2
			}
			{
				f4 f2 f4~ \db f8 f4( g8) f2~ |
			}
		}

		f4 a8 a a4 g \db f8( g f) e d2~ |
		d4 a'~ a a^\ds \bar "|."

	}

	\layout {}
	\midi {}
}
