\version "2.18.2"

\header {
	title = "Umnaʿ Raqādī"
	subtitle = "Rasd #46"
	composer = "Page 283"
	meter = "Mizan al-Batayhi"
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
		\tempo "Andantino" 4 = 76

		\repeat volta 2 {
			d'8. e16 d8 c a4 g |
			g fis8 g a4 b8 a |
			g e f e d4 g |
			f8. f16~ f g f8 r16 f8 g16 f8 c |
			c4 d8 e f g f4 |
			g4 fis8 g a4 b8 a |
			g8. e16~ e8 d e c d4
		}

		\repeat volta 2 {
			d8. d16~ d8 d c4 a |
			g8 c c d e c d4 |
		}

		d8. d16~ d8 d c4 a |
		g8 c c d e c d4 \bar "|."
	}

	\layout {}
	\midi {}
}
