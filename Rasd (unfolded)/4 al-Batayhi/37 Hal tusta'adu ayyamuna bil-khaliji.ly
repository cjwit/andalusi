\version "2.18.2"

\header {
	title = "Hal Tustaʿādu Ayyāmunā bil-Khalīji"
	subtitle = "Rasd #37"
	composer = "Page 263"
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
		\tempo "Andantino" 4 = 72

		\repeat unfold 2 {
			g4. g8 fis g a4~ \db a8 g( fis) g a2 |
			a4~ a8 a a b a g \db g e4~ e8 e4~ e8 fis |
			g8 a16 b a8 g e16 f e d c8 c \db d e d e d4. d8 |
			d4 d8 d d4~ d8 d~ \db d c4 d8 e4 g |
			g4 g8 g4 a16 b a8 g16 fis \db e8 g fis g a( b) a g |
			e16 f e d c4 c8 d e d \db d e16( d) c8 e d4 g |
			g4 g8 g4 a16 b a8 g16 fis \db e8 g fis g a b a g |
			e8. d16 c4 c8 d e d \db d8 e16( d) c8 e d4 g |
			g4 g8 g4 g8 g g \db g a g g g4 d8 g16 g |
			g4 r fis8 g a4~ \db a8 g fis g a2 |
			d4. d8 d d d4~ \db d8 e d c a16 b g8 a( b16) a |
			g4 g8 g4 a16 b g4 \db r8 b a b g4 e |
			e16 f e d c4 c8 d e4~ \db e16 c e4 e16 d e4 e8 fis |
			g a16 b a8 g e16 f e d c8 d \db d c4 e8 e4 e16 fis g a |
			g fis e d c4 e8 e e4 \db d8 c4 d8 e fis g a |
			g16 fis e d c4 c8 d e8. d16 \db d8 e c e d2 |
		}

		e16 f e d c8 d e16 fis g8 a g~ \db g e d e d4 e16 fis g a |

		\repeat unfold 2 {
			g16 fis e d c8 d e8. d16 c8 c \db d e d e d4 e16 fis g a |
		}

		\alternative {
			{
				g16 fis e d c8 d e16 fis g8 a g~ \db g e d e d4 e16 fis g a |
			}
			{
				g16 fis e d c8 d e16 fis g8 a g~ \db g e d e d4 e16 fis g a |
			}
		}

		\repeat unfold 2 {
			g16 fis e d c8 d e8. d16 c8 c \db d e d e d4 e16 fis g a |
			g fis e d c4 c8 d e16 fis g8~ \db g4~ g8 g4 g a8 |
			g4 a8 a a b a g~ \db d e( d) e d4 e16 fis g a |
			g fis e d c4 c8 d e8. d16~ \db d8 e16 d c8 e d2 |
		}

		\alternative {
			{
				e16 f e d c8 d e16 fis g8 a g~ \db g e d e d4 e16 fis g a |
			}
			{
				e16 f e d c8 d e16 fis g8 a g~ \db g e d e d4 e16 fis g a |
			}
		}

		g16 fis e d c8 d e8. d16 c8 c \db d e d e d4 e16 fis g a |
		g fis e d c4 c8 d e16 fis g8~ \db g g4 g g a8 |
		b16 c b a g8 a a b a g~ \db g e d e d4 e16 fis g a |
		g fis e d c4 c8 d e8. d16 \db d8 e16( d) c8 e d e e16 f e f |
		e f e d c4 d8 e f e \db f g f e c d4 e16 f |

		\repeat unfold 2 {
			e16 f e d c4 c8 d e8. d16 \db d8 e16( d) c8 e d( e) e16 f e f |
		}

		\alternative {
			{
				e16 f e d c4 d8 e f e \db f g f e c d4 e16 f |
			}
			{
				e16 f e d c4 d8 e f e \db f g f e c d4 e16 f |
			}
		}

		e16 f e d c4 c8 d e8. d16 \db d8 e16( d) c8 e d2 |
		g4. g8 fis g a4~ \db a8 g fis g a2 |
		d4. d8 d d d4~ \db d8 e d c a16 b g8 a( b16) a |
		g4 g8 g4 a16 b g4~ \db g8 b a b g4 e |
		e16 f e d c4 c8 d e4 \db e16( d) e4 e16( d) e4 e8 fis |
		g a16 b a8 g e16 f e d c8 d \db d8 c4 e8 e4 e16 fis g a |
		g fis e d c4 e8 e e4 \db d8 c4 d8 e fis g a |
		g16 fis e d c4 c8 d e8. d16 \db d8 e c e d2 \bar "|."
	}

	\layout {}
	\midi {}
}
