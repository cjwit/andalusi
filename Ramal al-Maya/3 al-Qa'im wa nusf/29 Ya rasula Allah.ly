\version "2.18.2"

\header {
	title = "Yā Rasūla Allah"
	subtitle = "Ramal al-Maya #29"
	composer = "Page 117"
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
		\tempo "Andantino" 4 = 69

		s4 a2 a4( |

		\repeat volta 5 {
			g8^\segno) c( b c) a( b g a |
			a4) r8 a8 a4 g( \db f4. g8 a4 g16 f g a |
			f4) a8 a a4 g \db f16( g f e d4) e16( f g8) f( a) |
			g16( f e d c8) c~ c4 d8( c \db d) e( f g) a( bes16 c a bes g a |
			f4) r8 a a4 g \db f16( g f e d4 e16 f g8 f e |
			d4.) d8 d4 d( \db e8) c4( d8 f4~ f8 g16 a |
		}

		\alternative {
			{
				g16 f e d c8) c~ c4 d8( c \db d) e( f g) a( bes16 c a bes g a |
				f4) r8 a8 a4 g \db f16( g f e d4 e16 f g8 f e |
				d8 c d) e f( e) g4~ \db g8 c,( b c d2~ |

				\partial 1

				d4-\fine) \bar "||" a'2 a4 |
			}
			{
				\partial 1

				g16( f e d c8) c~ c4 d8( c
			}
		}

		\repeat volta 2 {
			\partial 1
			d8) e( f g) a( bes16 c a bes g a |
			f4) r8 a a4 g \db f16( g f e d4) e16( f g8 f) e |
			d8 d d d d4 d~ \db d8 c4( d8 f4~ f8 g16 a |
		}

		\alternative {
			{
				\partial 1
				g16 f e d c8) c c4 d8 c |
			}
			{
				g'16\repeatTie f e d c8) c~ c4 d8( c \db d8) e( f g) a( bes16 c a bes g a |
			}
		}

		f4) a2 g4 \db f16( g f e d4) e16( f g8 f e |
		d c d) e f( e) g4~ \db g8 c,( b c d2~ |
		d4) a'2 a4^\ds \bar "|."

	}

	\layout {}
	\midi {}
}
