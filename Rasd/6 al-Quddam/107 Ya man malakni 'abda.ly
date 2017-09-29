\version "2.18.2"

\header {
	title = "Yā Man Malaknī ʿAbdā"
	subtitle = "Rasd #107"
	composer = "Page 353"
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
		\time 6/16
		\tempo "Allegretto" 8. = 104

		\repeat volta 2 {
			\partial 4

			e16~ e fis8 |
			g g16~ g g8 |
			g8. g16 g8 |
			g8 a16 b g8~ |
			g8
		}

		e16~ e fis8 |
		g g16~ g g8 |
		g8. fis16 g8 |
		a4.~ |
		a8

		\repeat volta 2 {
			r16 d8.~ |
			d8 c16~ c b8 |
			a8.~ a16 g8 |
			g8.~ g16 d8~ |
			d fis16~ fis g8 |
			a8 b16~ b a8 |
			g fis16~ fis a8 |
			g4.~ |
			g8^\fine_\dc
		}


	}

	\layout {}
	\midi {}
}
