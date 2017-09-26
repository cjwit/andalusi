\version "2.18.2"

\header {
	title = "Tayyahtanī Bayna al-Anām"
	subtitle = "Rasd #107"
	composer = "Page 354"
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

\relative d' {
	\clef "treble"
	\key c \major
	\time 6/16
	\tempo "Allegro" 8. = 120

	\repeat volta 2 {
		\partial 4

		b'16~ b a8 |
		g16. fis32 g16~( g8. |
		g8) c16~ c c8 |
		c8 c16 b a8~ |
		a a16~ a b8 |
		c d16~( d8. |
		d8) g,16~ g fis8 |
		g a16~ a b8 |
		c b16~ b a8 |
		g16. fis32 g16 g8.~ |
		g8-\fine
	}

	\repeat volta 2 {
		g16~ g fis8 |
		g a16~ a b8 |
		c b16~ b a8 |
		g a16~ a8.~ |
		a8
	}

	g16~ g fis8 |
	g a16~ a b8 |
	c b16 b a8 |
	g16. fis32 g16~( g8. |
	g8-\dc) \bar "||"




}
