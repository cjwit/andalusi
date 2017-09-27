\version "2.18.2"

\header {
	title = "Yā Qalbī Tasabbar"
	subtitle = "Rasd #47"
	composer = "Page 284"
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
		\tempo "Moderato" 4 = 84

		\repeat volta 2 {
			r8 e e e4 g8 e4~ |
			e8. d16~ d8 d c d e4 |
			g4 g8 a4 g8 b a |
			g8. e16~ e8 d e c d4-\fine |
		}

		\repeat volta 2 {
			g4 g8 a4 g8 a b |
			g8. e16~ g8 d e c d4 |
		}

		g4 g8 a4 g8 b a |
		g8. e16~ e8 d e c d4-\dc \bar "||"

	}

	\layout {}
	\midi {}
}
