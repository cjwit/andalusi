\version "2.18.2"

\header {
	title = "Salū Tāj al-Mlāh"
	subtitle = "Rasd #102"
	composer = "Page 348"
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
		\tempo "Moderato" 4 = 92

		\partial 2

		\repeat volta 2 {
			d8 e16 fis g8 g |
			g4 g g |
			g g8 g4 g8 |
			g8 a16 b a8 g d4~ |
			d4 d'8 d4 c8 |
			b4 a b8. c16 |
			b a g8 g g4 g8 |
			g a16 b a8 g d4~ |
			d4 a'8 a4 g8 |
			f e f g b8. c16 |
			b a g8 g a4 g8 |
			e fis g a g4~ |
			g-\fine

		}

		\repeat volta 2 {
			g8 g4 g8 |
			g a16 b a8 g d4~ |
			d a'8 a4 g8 |
			fis e fis g b8.( c16) |
			b a g8-\dc
		}

	}

	\layout {}
	\midi {}
}
