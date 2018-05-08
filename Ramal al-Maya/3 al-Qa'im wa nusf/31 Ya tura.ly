\version "2.18.2"

\header {
	title = "Yā Tura"
	subtitle = "Ramal al-Maya #31"
	composer = "Page 119"
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

		c4( b) c |

		\repeat volta 5 {
			\partial 1
			d4^\segno( c8 e d4~ d16 e d c |
			b4) b8 b b4 g~ \db g8 b4( d8 c2~ |
			c4) d2. \db c8( d c e d4 c16 d c bes |
			a4) a8 a a4 a( \db g8) f4( g8 a bes a g |
			f4) a8 a a( c) bes( a) \db g2 f8 g f16( g) f( e) |
			d4 g8 g g4 g16( a g f \db e d) c4 d8 f2~ |
		}

		\alternative {
			{
				f4 f2( g4) \db a2( g4 f16 g f e |
				d8 c) d e f( e16 f) g4~ \db g8 c,( b c d2~ |
				\partial 1
				d4-\fine) \bar "||" c'4 b c |
			}
			{
				\partial 1
				f,4 f2 g4 |
			}
		}

		\repeat volta 2 {
			\partial 1
			a2 g4( f16 g f e |
			d4) r8 g8 g4 g16( a g f \db e d) c4( d8 f2~ |
		}

		\alternative {
			{
				\partial 1
				f4) f2 g4
			}
			{
				f4 f2 g4 \db a2 g4( f16 g f e |
			}
		}

		d8 c d) e f( e16 f) g4~ \db g8 c,( b c d2~ |
		\partial 1
		d4) c'( b) c-\ds \bar "|."

	}

	\layout {}
	\midi {}
}
