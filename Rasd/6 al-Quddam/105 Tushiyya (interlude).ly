\version "2.18.2"

\header {
	title = "Tushiyya (interlude)"
	subtitle = "Rasd #105"
	composer = "Page 351"
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
		\tempo "Moderato" 8. = 92

		\repeat volta 2 {
			\repeat percent 4 {
				a'16. a32 g16 fis16 g8 |
			}

			g8. r8. |

			\repeat percent 3 {
				a16. a32 g16 fis16 g8 |
			}

			a16. a32 g16 fis16. e32 d16 |
			c8. r8.
		}

		\repeat volta 2 {
			d'8 r16 d16 b8 |
			c8 r16 c a8 |
			b16. b32 g16 fis16 g8 |
		}

		\alternative {
			{
				a16. a32 a16 a16 a8 |
			}
			{
				a8 d,16 r8. |
			}
		}

		\repeat volta 2 {
			d16. d32 d16 e fis 8 |

			\repeat percent 2 {
				g16. a32 a16 a g8 |
			}

			\repeat percent 4 {
				a16. a32 g16 fis g8 |
			}

			g8. r8.
		}




	}

	\layout {}
	\midi {}
}
