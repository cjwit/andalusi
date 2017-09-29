\version "2.18.2"

\header {
	title = "Qalbī yakhāf"
	subtitle = "Rasd #28"
	composer = "Page 253"
	meter = "Mizan al-Qaʾim wa Nusf"
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
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Presto" 8 = 160

		\repeat unfold 2 {

			e8. e16~ e8 e d2 |
			d8 e16 fis( g8) a g16 fis e d c4 |
			d8. c16~ c8 d e fis g8. g16 |
			g8 a4 g8 e16 f e d c4 |
			d8. c16~ c8 d e4 d8 d |
			d e16 d c8 e d2-\fine |
		}

		\repeat unfold 2 {

			g8. a16~ a8 g e16 f e d c8 c |
			d e c e d2 |
		}

		g8. a16~ a8 g e16 f e d c4 |
		d8 e c e d2-\dc \bar "||"

	}

	\layout {}
	\midi {}
}
