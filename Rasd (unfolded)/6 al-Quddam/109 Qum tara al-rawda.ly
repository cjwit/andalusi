\version "2.18.2"

\header {
	title = "Qum Tara al-Rawda"
	subtitle = "Rasd #109"
	composer = "Page 355"
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
		\tempo "Vivace" 8. = 132

		\repeat unfold 2 {
			\partial 8.

			g16 g8 |
			a4. |
			a8. r16 d8 |
			d d16 d d8 |
			d8.~ d16 c8 |
			b8 d16~ d c8 |
			b d16~ d c8 |
			b b16~ b c8 |
			d8. r16 g,8~ |
			g a16~ a g8 |
			fis a16~ a g8 |
			fis fis16~ fis g8 |
			a4. |
			b8. b16 c8 |
			b16 a g~ g8.-\error |
			b8. c16 b8 |
			a8.~ a16 g8~ |
			g g16~ g a8 |
			g8. r16 d8 |
			e fis16~ fis a8 |
			g8.-\fine
		}

		\repeat unfold 2 {
			r16 fis8 |
			g a16~ a8.~ |
			a4. |
			d8 d16 d c8 |
			b8.~ b16 g8 |
			g a16~ a a8 |
			g8.
		}

		r16 fis8 |
		g a16~ a a8~ |
		a4. |
		d8. d16 c8 |
		b8.~ b16 g8~ |
		g a16~ a8. |
		g8.-\dc \bar "||"



	}

	\layout {}
	\midi {}
}
