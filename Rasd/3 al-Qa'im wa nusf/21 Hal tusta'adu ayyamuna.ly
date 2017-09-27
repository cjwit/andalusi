\version "2.18.2"

\header {
	title = "Hal Tustaʿādu Ayyāmunā"
	subtitle = "Rasd #21"
	composer = "Page 244"
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
		\tempo "Moderato" 4 = 92

		\partial 1..

		r8 e,8 e4 e \db d8 e16 d c8 e d2~ |

		\repeat volta 5 {

			d4^\segno r8 d d4 d~ \db d8 d4 c8 d e d c |
			a g g' g g4 g~ \db g8 g4 a8 g4 e8 fis |
			g2. g4~ \db g8 a16 g fis8 g a2~ |
			a4 a8 a a4 g \db a b a g8 g |
			e fis g a g4 r8 g~ \db g a fis g a2~ |
			a4 a8 a a4 g \db a b a g8 g |
			e4. d8 c4 e \db d8 e c e d2~ |
			d4 c8 d e4 e \db d2-\error e8 fis g a |
			g4 e16 f e d c4 d~ \db d8 c4 d8 e2~ |
			e4 g fis g \db a g b a |
			g e16 f e d c4 e \db d8 e c e d2~ |
		}

		\alternative {
			{ d4-\fine \bar "||" r8 e8 e4 e \db d8 e16 d c8 e d2 | }
			{ c'4 b8 c d4 c \db b16 c b a g4 g g | }
		}

		a8 c b a g4 g~ \db g8 c4 b8 a2 |

		% written out repeat

		c4 b8 c d4 c \db b16 c b a g4 g g |
		a8 c b a g4 g~ \db g8 c4 b8 a2 |

		% end written out repeat

		d4. e8 d4 c \db b16 c b a g4 e fis |
		g2. g4~ \db g8 a16( g) fis8 g a2~ |
		a4 r8 a4. g4 \db a2 b4 a |
		g4 e16 f e d c4 e( \db d8) e16 d c8 e d2~ |
		d4 r8 e8 e4 e \db d8 e16 d c8 e d2-\ds

	}

	\layout {}
	\midi {}
}
