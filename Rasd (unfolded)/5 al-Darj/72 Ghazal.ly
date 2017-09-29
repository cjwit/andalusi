\version "2.18.2"

\header {
	title = "Ghazāl"
	subtitle = "Rasd #72"
	composer = "Page 310"
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
		\tempo "Moderato" 4 = 88

		\repeat unfold 2 {
			c8 d e g e4 e8 d |
			c4 e8 e d2 |
			c8 d e g e4 e8 d |
			c4 e8 e d2 |
			d8 d d d d8. e16 d8 c |
			a g c d e2 |
			a8 a16( b) a8 g e4 e8 d c4 e8 e d2-\fine |
		}

		\repeat unfold 2 {
			a'8 a16( b) a8 g e4 e8 d |
			c4 e8 e d2 |
		}

		a'8 a16( b) a8 g e4 e8 d |
		c4 e8 e d2-\dc \bar "||"



	}

	\layout {}
	\midi {}
}
