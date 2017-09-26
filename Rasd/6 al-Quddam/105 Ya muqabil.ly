\version "2.18.2"

\header {
	title = "Yā Muqābil"
	subtitle = "Rasd #105"
	composer = "Page 352"
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
	\tempo "Moderato" 8. = 92

	\repeat volta 2 {
		g8 g16 g a8 |
		g4. |
		c8 b16 d c b |
		a8.~ a16 g8 |
		g8 g16~ g a8 |
	}

	\alternative {
		{
			g8. r8. |
		}
		{
			g8. r16 g8 |
		}
	}

	g8 g16~ g a8 |
	g8.~ g16 a8 |
	g8. r8. |

	\repeat volta 2 {
		e8 fis16 g a8 |
		g4. |
		c8 b16 d c b |
		a8.~ a16 g8~ |
		g g16(~ g g8) |
		d8 fis16 g a b |
		a8 g16 g g8 |
		d8.~ d16 g8 |
		g8 g16~ g a8 |
		b16. a32 g16~ g a8 |
		d16. c32 b16 a g8~
		g e16~ e fis8 |
		g8. r8.
	}


}
