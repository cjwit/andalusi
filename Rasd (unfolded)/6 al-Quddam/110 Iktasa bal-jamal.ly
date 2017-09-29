\version "2.18.2"

\header {
	title = "Iktasa bal-Jamāl"
	subtitle = "Rasd #110"
	composer = "Page 356"
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
		\tempo "Vivace" 8. = 138

		\repeat unfold 2 {
			\partial 8
			b'8 \bar "||"
			b^\segno a16 a8 g16 |
			g8. r8. |
			g8 fis16~ fis g8^\coda \bar "||"
			a8. r16 b8 |
			b8 a16 a8 g16 |
			g8.~ g16
		}

		\repeat unfold 2 {
			c8 |
			\tuplet 2/3 { c16 c } c8 c16 |
			c4. |
			\tuplet 2/3 { c16 d~ } d16. c32 b16 |
			a8.~ a16 b8 |
			b b16 b b8 |
			b8.~ b16 g8 |
			g a16~ a b d |
			c8. r16
		}

		c8 |
		\tuplet 2/3 { c16 c } c8 c16 |
		c4. |
		\tuplet 2/3 { c16 d~ } d16. c32 b16 |
		a8.~ a16 b8 |
		b8 a16 a8 g16 |
		g8. r16 b8-\dsalcoda \bar "||"
		a8.^\coda r16 d8 |
		d b16 c a b |
		g8. r8. \bar "|."

	}

	\layout {}
	\midi {}
}
