\version "2.18.2"

\header {
	title = "Buh bil-Ghara Mi"
	subtitle = "Rasd #58"
	composer = "Page 296"
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
		\tempo "Andante" 4 = 60

		\repeat unfold 2 {
			r8 e4 e8( d) e d4~ |
			d8 d d d4 d8 e16 f e d |
			c8 c( d) c4 d8 e fis |
			g g4 a g8 e16 f e d |
			c8 c c c4 d8 e4 |
			d8 e d c4 e8 d4-\fine |
		}

		\repeat unfold 2 {
			r8 g8 g a16 b a8 g e16 f e d |
			c8 c4 c d8 e4 |
			d8 e d c4 e8 d4 |
		}

		r8 g4 a16 b a8 g e16 f e d |
		c8 c4 c d8 e4 |
		d8 e d c4 e8 d4-\dc \bar "||"
	}

	\layout {}
	\midi {}
}
