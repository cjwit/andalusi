\version "2.18.2"

\header {
	title = "Lāmu al-ʿIdhāri"
	subtitle = "Rasd #34"
	composer = "Page 259"
	meter = "Mizan al-Batayhi"
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

	\relative d' {
		\clef "treble"
		\key c \major
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Andantino" 4 = 66

		\partial 4

		g4

		\repeat volta 4 {

			a1~ \db a8 a4 a8 g4 e8 d |
			g2 a8 b c d \db c8 b16 a g8 g4 g8~ g a |
			b16 c b a g8 g g4~ g8 g~ \db g a4 g8 e d e c |
			d4. a'8 a b c a~ \db a g4 f8 e d e c |
			d8 e~ e16 f g a g f e d c8 c \db d e4 g8 e d c d |

		}

		\alternative {
			{
				e4 d d8 d d e \db d c16 b a8 b16 c d4 g |
			}
			{
				e4 d d8 d d e \db d c16 b a8 b16 c d4 g |
			}
		}

		\repeat volta 2 {

			f2~ f8 g f16 g f e \db d8 f4 e8 f g f e |
			d c d e f e16 f g8 g \db g f4 e8 d c d16 e f g |
			f4 g8 a f g16 a f4 \db g8 a f g16 a f2 |
			f2. a4 \db a8 a4 a8 g8. f16 g a g f |
			e4. e8 e4. f8 \db e16 f g4 r8 e4 e |

		}

		\alternative {
			{
				d4 d8 e d4 a16 b c8 \db d8 c4. g'4 g |
			}
			{
				d4 d8 e d4 a16 b c d \db e d c4. g'4. a8 |
			}
		}

		f2~ f8 g f16 g f e \db d8 f4 e8 f g f e |
		d8 c d e f e16 f g8 g~ \db g f4 e8 d c d16 e f g |
		f1~ \db f4 r4 c d |

		\repeat volta 2 {

			e4~ e16 f e f e f e f e f e f \db e f g4. e4 e |

		}

		\alternative {
			{
				d4. e8 d4 c \db a g c d |
			}
			{
				d4 d8 e d4 c \db a g c d |
			}
		}

		e4~ e16 f e f e f e f e f e f \db e f g4. e4 e |
		d4~ d8 e d4 c \db a g c d8 e |
		f1~ \db f8 g f16 e d c f4 f8 g |
		f4. f8 f4~ f8 g~ \db g8 a4 g8 f d e c |
		d4. a'8 a b c a~ \db a g4 f8 e d e c |
		d e e16 f g a g f e d c8 c \db d e4 g8 e d c d |
		e4 d d8 d d e \db d8 c16 b a8 b16 c d4 g |
		f2~ f8 g f16 g f e \db d8 e4 f8 g f g4 \bar "|."

	}

	\layout {}
	\midi {}
}
