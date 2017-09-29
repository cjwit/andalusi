\version "2.18.2"

\header {
	title = "Tushiyya"
	subtitle = "Rasd #78"
	composer = "Page 316"
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
			\set Timing.beatStructure = #'(1 1 1 1)
		\tempo "Andante" 4 = 60

		a'8 a16 b a8 g e d |
		g g a4 r4 |
		a8 a16 b a8 g e d |
		e c d4 r4 |
		a'8 a16 b a8 g e d |
		g g a g a4 |
		a8 a16 b a8 g e d |
		e c d4 r4 |

		\repeat unfold 2 {
			d8 d16 e d8 c a g |
			c d e g e d |
			e c d4 r4 |
		}

		\repeat unfold 2 {
			g4 e16 fis g a g4~ |
			g8 e16 fis g8 a g4 |
			a8 a a g b4 |
			b8 b b a d c16 b |
			a4 a8 a a b |
			a g g d g a |
			g f? e d e c |
			d4 r2
		}

		\repeat unfold 2 {
			a'8 r16 c b c a8 r16 c b c |
			a4 g8 e fis g |
			a4 b16 c b c b a g8 |
			a8 r16 c b c a8 r16 c b c |
			a4 g8 d g f? |
			e d e c d4 |
		}

		\repeat unfold 2 {
			e8. e16 g4 e8. e16 |
			g4 e16 fis g a g fis e d |
			c4 e16 fis g a g fis e d |
			c8 d e d e c |
		}

		\alternative {
			{
				d4 d8 d d4 |
			}
			{
				d8-\continue \bar ""
			}
		}

	}

	\layout {}
	\midi {}
}
