\version "2.18.2"

\header {
	title = "Inna Wajdī"
	subtitle = "Rasd #70"
	composer = "Page 308"
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
		\tempo "Moderato" 4 = 80

		\repeat volta 5 {
			a'4. g8 e4 a8 g |
			e16 f e d c4 c d |
			e d8 e c e d4 |
			a'8 b a g e4 a8 g |
			e16 f e d c4 c d |
			e4 d8 e c e d4 |
			g4. g8 g4 a8 b |
			d16 c b a g4 g g |
			g e8 fis4 g8 a4 |
		}

		\alternative {
			{
				a8 b a g e4 a8 g |
				e16 f e d c4 c d |
				e d8 e c e d4-\fine |
			}
			{
				% written out repeat
				a'8 b a g e4 a8 g |
				e16 f e d c4 c d |
				c4 d8 c4 d8 e4 |
			}
		}

		a8 b a g e4 a8 g |
		e16 f e d c4 c d |
		c4 d8 c4 d8 e4 |
		% end written out repeat

		a8 b a g e4 a8 g |
		e16 f e d c4 c d |
		e d8 e c e d4-\dc |

	}

	\layout {}
	\midi {}
}
