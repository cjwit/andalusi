\version "2.18.2"

\header {
	title = "Yā Talʿa al-Badri"
	subtitle = "Rasd #83"
	composer = "Page 321"
	meter = "Mizan al-Quddam"
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
		\time 3/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1)
		\tempo "Andantino" 4 = 69

		\partial 2

		d4 d |

		\repeat volta 5 {
			c8^\segno d e4 e8 e16 f |
			g4 a g |
			a2 g4~ |
			g e4. d8 |
			e8 c d4. g8 |
			g g fis g a4~ |
			a8 e e e4 d8 |
			c4 c8 d e d |
			e8 c d4. e8 |
			c4 d8 e f4 |
			d8 e f4. e8 |
			g8. f16 e8 d e16 f e d |
			c4 e8 d e16 f e d |
			c4 c8 d e d |
			e8 c d4. e8 |
			c4 d8 e f4 |
			d8 e f4. e8 |
			g8. f16 e8 d e16 f e d |
			c4 e8 d e16 f e d |
			c4 c8 d e d |
			e c d2~ |
			d8 g g g g4 |
			r8 g g d g4 |
			r8 g g d g4 |
			a8 a a g a b |
			a g g d g a |
			g f e d e c |
			d4 r e8 e |
			e4 d8 c4 d8 |
			d4 d d |
			c8 d e4 f8 e16 f |
			g4 a g |
			a2 g4~ |
			g e4. d8 |
			e c d2 |
			g8 g fis g a4~ |
			a8 e e e4 d8 |
			c c c d c4~ |
			c8 c c a4 g8 |
			c4~ c8 d e8. d16 |
			c8 c d e d e |
		}

		\alternative {
			{
				d4-\fine \bar "||" d d |
			}
			{
				d4 f f8 e16 f |
			}
		}

		\repeat volta 2 {
			g8 f16 e d4 e |
			f g8 a f g |
			f4. g8 f4~ |
			f4 e~ e8 d |
			e c d2~ |
			d8 d16 d e8 f g4~ |
			g c, b8 c |
			d8 e f g a16 g f e |
			d8 d d c b c |
			d c d e f e |
			f g g d c16 b c8 |
		}

		\alternative {
			{
				d4 f f8 e16 f |
			}
			{
				d4 f f8 e16 f |
			}
		}

		g8 f16( e) d4 e |
		f4 g8 a f g |
		f4. g8 f4~ |
		f e~ e8 d |
		e c d2~ |
		d8 d16 d e8 f g4~ |
		g a4. g8 |
		f4 f f~ |
		f8 g a4 b |
		c8 b d4 c |
		a f8 a g4~ |
		g e4. d8 |
		e8 c( d2) |
		g4 fis8 g a4~ |
		a8 e e e4 d8 |
		c4 c8 d e( d) |
		e c d4. e8 |
		c4 d8 e f4 |
		d8 e f4. e8 |
		g8. f16 e8 d e16 f e d |
		c4 e8 d e16 f e d |
		c4 c8 d e( d) |
		e c d4. e8 |
		c4 d8 e f4 |
		d8 e f4. e8 |
		g8. f16 e8 d e16 f e d |
		c4 e8 d e16 f e d |
		c4 c8 d e( d) |
		e c d2~ |

		\time 4/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1)

			d4^\error g g8 g g4 |

		\time 3/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1)

		r8 g g d g4 |
		r8 g g d g4 |
		a8 a a g a b |
		a g g d g a |
		g f e d e c |
		d4 r4 e8 e |
		e4 d8 c4 d8 |
		d4 d d |
		c8 d e4 f8 e16 f |
		g4 a g |
		a2 g4~ |
		g e4. d8 |
		e c d2 |
		g4 fis8 g a4~ |
		a8 e e e4 d8 |
		c c c d c4~ |
		c8 c c a4 g8 |
		c4~ c8 d e8. d16 |
		c8 c d e d e |
		d4 d d-\ds \bar "||"


	}

	\layout {}
	\midi {}
}
