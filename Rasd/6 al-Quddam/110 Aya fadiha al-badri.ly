\version "2.18.2"

\header {
	title = "Ayā Fādiha al-Badri"
	subtitle = "Rasd #110"
	composer = "Page 357"
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
	\tempo "Presto" 8. = 144

	\repeat volta 2 {
		\partial 8
		b'8 \bar "||"
		b8^\segno a16~ a g8 |
		g g16~ g g8 |
		g fis16~ fis g8 |
		a8. r16 b8 |
		c b16~ b a8 |
		b a16~ a g8 |
		g g16~ g g8 |
		d8.~ d16 a'8 |
		a a16~ a a8 |
		g g16~ g g8 |
		g fis16~ fis g8 |
		a8.~ a16 b8 |
		c b16~ b a8 |
		b a16~ a g8 |
		g g16( fis) a8 |
		g8.~ g16-\fine
	}

	\repeat volta 2 {
		b8 |
		b a16~ a a8 |
		g g16~ g g8 |
		g fis16~ fis a8 |
		g8.~ g16
	}

	b8 |
	c b16~ b a8 |
	b a16~ a g8 |
	g g16( fis) a8 |
	g8.~ g16 b8-\ds \bar "||"


}
