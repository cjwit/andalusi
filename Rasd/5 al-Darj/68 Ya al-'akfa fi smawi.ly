\version "2.18.2"

\header {
	title = "Yā al-ʿĀkfa fī Smāwī"
	subtitle = "Rasd #68"
	composer = "Page 306"
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

		\repeat volta 2 {
			e2 e4 d~ |
			d8 e d c a4 g8 c |
			c4 d8 e d e d4 |
			r4 g fis8 g a4~ |
			a8 b a g e4 a8 g |
			e4 d8 e c e d4-\fine
		}

		\repeat volta 2 {
			g2 fis4 g |
			a4. b8 a4 g |
			e a8 g e16 f e d c8 d |
			e4 d8 e c e d4-\dc
		}

	}

	\layout {}
	\midi {}
}
