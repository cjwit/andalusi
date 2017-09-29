\version "2.18.2"

\header {
	title = "Fiq Yā Nadīm"
	subtitle = "Rasd #59"
	composer = "Page 297"
	meter = "Mizan al-Darj"
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
		\time 4/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1)
		\tempo "Andante" 4 = 63

		r8 e4 r8 d e d4~ |

		\repeat unfold 5 {
			d8^\segno c d e d c a4( |
			g8) c4 c d8 e4~ |
			e8 g4 e d8 e16 f e d |
			c8 c d e( d) e d4~ |
		}

		\alternative {
			{
				d8-\fine \bar "||" e4 e8 d e d4 |
			}
			{
				% written out repeat
				d8 g4 a g8 e16 f e d |
			}
		}

		c8 c d e( d) e d4~ |
		d8 g4 a g8 e16 f e d |
		c8 c d e( d) e d4~ |
		% end written out repeat

		d8 g4 a g8 e16 f e d |
		c8 c d e( d) e d4~ |
		d8 e4 e8( d) e d4-\ds \bar "||"
	}

	\layout {}
	\midi {}
}
