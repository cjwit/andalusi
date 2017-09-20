\version "2.18.2"

\header {
	title = "Anā Qad ʿAya Sabrī"
	subtitle = "Rasd #79"
	composer = "Page 318"
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
		\set Timing.beatStructure = #'(1 1 1 1)
	\tempo "Andante" 4 = 63

	\repeat volta 2 {
		g4 f8 e4 d16 e |
		c8 r16 b a g a b c4 |
		e d8 e c e |
	}

	\alternative {
		{
			d8 a'16 bes a g f e d4 |
		}
		{
			d8 c d e4 g8 |
		}
	}

	\repeat volta 5 {
		e8^\segno d e c d4~ |
		d8 d d d4 c8 |
		d e e16 f? g a g f e d |
		c8 c d e16 fis g8 g |
		g16 fis e8 g8. a16 g fis e d |
		c8 c d e d e |
		d d c e d4~ |
	}

	\alternative {
		{
			d8-\fine \bar "||" c d e4 g8 |
		}
		{
			d8\repeatTie g8 g a16 b a8 g |
		}
	}

	\repeat volta 2 {
		e8 d e c d4~ |
	}

	\alternative {
		{
			d8 g g a16 b a8 g |
		}
		{
			d8\repeatTie g g a16 b a8 g |
		}
	}

	e8 d e c d4~ |
	d8 c d e4 g8-\ds \bar "||"



}
