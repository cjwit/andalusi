\version "2.18.2"

\header {
	title = "Law Kān Shawqī"
	subtitle = "Rasd #69"
	composer = "Page 307"
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

		\partial 2.

		r8 e e4 e |

		\repeat volta 2 {
			d4.^\segno d8 d4 d |
			c8 d c d e2~ |
			e4 r8 a a4 g |
			e16 f e d c8 d c4 d |
			e8 fis g a g4 e16 fis g a |
		}

		\alternative {
			{
				g16 fis e d c8 \breathe e e4 e |
			}
			{
				g16 fis e d c8\breathe e e4 e |
			}
		}

		d4. d8 d4 d |
		c8 d c d e2~ |
		e4 r8 a a4 g |
		e16 f e d c8 d c4 d |
		e8 d e c d2-\fine \bar "||"

		\repeat volta 5 {
			r8 e4 e8 d e d4~ |
			d8 d4 d8 c d e4 |
			r8 g4 a g8 e16 f e d |
		}

		\alternative {
			{
				c8 c d e d e d4 |
			}
			{
				c8 c d e d e d4~ |
			}
		}

		d4 r8 e e4 e-\ds \bar "||"

	}

	\layout {}
	\midi {}
}
