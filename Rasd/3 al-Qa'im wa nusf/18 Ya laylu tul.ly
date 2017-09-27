\version "2.18.2"

\header {
	title = "Ya Laylu Tul"
	subtitle = "Rasd #18"
	composer = "Page 241"
	meter = "Mizan al-Qaʾim wa Nusf"
	copyright = "Transcription adapted from Yūnis al-Shāmī, Nūbāt al-Andalusiyya: Nūba al-Rasd (2009)"
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
		\tempo "Andantino" 4 = 78

		\partial 1..

		c,8 d e4 e~ \db e16 f e d c8 d e4~ e16 fis g a |

		\repeat volta 2 {

			g16-\segno fis e d c8 d e4 d~ \db d8 e c e d2~ |
		}

		\alternative {
			{ d4 c8 d e4 e~ \db e16 f e d c8 d e4~ e16 fis g a | }
			{ d,4 c8 d e4 e~ \db e16 f e d c8 d e4~ e16 fis g a | }
		}

		g16 fis e d c8 d e4 d~ \db d8 e c e d2~ |
		d4 g2 a4~ \db a4. g8 a b a g |

		\repeat volta 6 {

			e4 d8 d d4 d~ \db d8 c4 d8 e2~ |
			e4 g2 a4~ \db a4. g8 a b a g |
			e4 d8 d e4 d~ \db d8 e c e d2

		}

		\alternative {
			{ d4-\fine \bar "||" g2 a4 \db a4. g8 a b a g | }
			{ d4 c8 d e4 e~ \db e16 f e d c8 d e4~ e16 fis g a-\dc \bar "||" }
		}
	}

	\layout {}
	\midi {}
}
