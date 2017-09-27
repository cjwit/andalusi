\version "2.18.2"

\header {
	title = "Ahin Min Lawʿa"
	subtitle = "Rasd #96"
	composer = "Page 342"
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
		\tempo "Andantino" 4 = 76

		\autoBeamOff \parenthesize g8 \autoBeamOn \breathe g g g g4 |

		\repeat volta 5 {
			fis8^\segno g a2~ |
			a4 g8 f? a4 |
			g e8. d16 c8 e |
			d2. |
			g4 f8 e16 d c8 d |
			c4. d16 e c4~ |
			c8 c c d4 e8 |
			f4 f8 e g4~ |
			g8 f e d c d16( e) |
			f4 f8. a16 g8 f16 e |
			d8 c c d4 e8 |
			f4 f8 e g4~ |
			g8 f e d c d16( e) |
			f8 g g g g4 |
			fis8 g a2 |
			a4 g8 f? a4 |
			g4 e8 e16( d) c8 e |
			d2. |
			g4 f8 e16( d) c8 d |
			c4. d16 e c4~ |
			c8 c c a4 g8 |
			c4~ c8 d e16 f e d |
			c8 c d e d e |
		}

		\alternative {
			{
				d8-\fine \bar "||" g8 g g g4 |
			}
			{
				d4 c8 c b c |
			}
		}

		\repeat volta 2 {
			d8 c b a b c |
			d4 c8 b16 a g8 c |
			g4~ g8 a b4~ |
			b8 g' a g16 fis e8 fis |
			g4. a16 b g4~ |
			g8 g g e4 d8 |
			g b b8. a16 b c b a |
			g8 g g a e fis |
			g4 a16 b c d c4~ |
		}

		\alternative {
			{
				c4 c,8 c b c |
			}
			{
				c'4\repeatTie c,8 c b c |
			}
		}

		d8 c b a b c |
		d4 c8 b16 a g8 a |
		g4~ g8 a b4~ |
		b8 g' a g16 fis e8 fis |
		g8 \breathe g g g g4 |
		fis8 g a2~ |
		a4 g8 f? a4 |
		g4( e8) d c e |
		d2. |
		g4 f8 e16 d c8 d |
		c4. d16 e c4~ |
		c8 c c a4 g8 |
		c4~ c8 d e16 f e d |
		c8 c d e d e |
		d g g g g4-\ds \bar "||"

	}

	\layout {}
	\midi {}
}
