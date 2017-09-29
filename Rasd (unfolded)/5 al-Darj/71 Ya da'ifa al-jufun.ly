\version "2.18.2"

\header {
	title = "Yā Daʿīfa al-Jufūn"
	subtitle = "Rasd #71"
	composer = "Page 309"
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
		\tempo "Moderato" 4 = 84

		\repeat unfold 2 {
			c4~ c8 b c d d4 |
			d4~ d8 e e f e f |
			e f e d c b c d |
			e4~ e8 d c4 d |
			e8 f e d c4 e |
			d1-\fine |
		}

		\repeat unfold 2 {
			a'4~ a8 b a4 g |
			e4~ e8 d c4 e |
			d1 |
		}

		a'4~ a8 b a4 g |
		e4~ e8 d c4 e |
		d1-\dc \bar "||"


	}


	\layout {}
	\midi {}
}
