\version "2.18.2"

\header {
	title = "Wa Fī Wisālika"
	subtitle = "Rasd #84"
	composer = "Page 325"
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

\relative d' {
	\clef "treble"
	\key c \major
	\time 3/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1)
	\tempo "Andantino" 4 = 69

	r8 c'16 b a8 g g8. fis16 |

	\repeat volta 3 {
		e4 g8. a16 g fis ees d |
		c8 c d8. d16 ees fis ees d |
		c4 c8 e? e4~ |
		e8 \breathe c'16 b a8 g g8. fis16 |
		e4 g8. a16 g fis ees d |
		c4 c8 d ees g |
		d ees c ees d4~ |
	}

	\alternative {
		{
			d8 \breathe c'16 b a8 g g8. fis16 |
		}
		{
			d4\repeatTie r2 \bar "|."
		}
	}

}
