\version "2.18.2"

\header {
	title = "Nahwa Mina al-Ghizlān"
	subtitle = "Rasd #87"
	composer = "Page 327"
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

\score {

	\relative d' {
		\clef "treble"
		\key c \major
		\time 3/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1)
		\tempo "Andantino" 4 = 72

		\repeat unfold 2 {
			d4~ d8 d4 c8 |
			d8 e d c a4 |
			g8 d' d e d c |
			a g a16 g a b g4 |
			g'4~ g8 g4 g8 |
			g2 a8 g16 fis |
			e8 a a b a g |
			e d e c d4 |
			a'4~ a8 a4 g8 |
			a8 b a g e8. d16 |
			c8 e e g g8. a16 |
			g fis e d c8 e e8. d16 |
			c8 e4 e fis8 |
			g8 a16 b a8 g e8. d16 |
			c8 c d e d e |
			d2.-\fine
		}

		\repeat unfold 2 {
			g4~ g8 g4 g8 |
			g2 a8 g16 fis |
			e8 a a b a g |
			e d e c d4 |
		}

		g4~ g8 g4 g8 |
		g2 a8 g16 fis |
		e8 a a b a g |
		e d e c d4-\dc \bar "||"

	}

	\layout {}
	\midi {}
}
