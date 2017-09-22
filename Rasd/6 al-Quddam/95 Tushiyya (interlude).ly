\version "2.18.2"

\header {
	title = "Tushiyya (interlude)"
	subtitle = "Rasd #95"
	composer = "Page 341"
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
	\tempo "Andantino" 4 = 76

	\repeat volta 2 {
		d'4 c8 b a16 g a b |
		g4 a8 b c4 |
		d c8 b a16 g a b |
		g4 a16 g a b g4 |
	}

	\repeat volta 2 {
		r8 e16 e f8 e d e |
		c e16 d e f g a g f e d |
		c8 e16 e f8 e d e |
		d c b a g4 |
	}

	r8 g'16 fis g8 a b4 |

	\repeat volta 2 {
		r8 b16 a b a b a b4 |
		d d16 c d e d c b a |
		g8 g16 fis g8 a b4 |
		r8 b16 a b8 a b4 |
	}

	\alternative {
		{
			a8 a16 b a8 g e4 |
			d8 g16 fis g8 a b4 |
		}
		{
			g4 a8 b g a |
			g8-\continue \bar ""
		}
	}

}
