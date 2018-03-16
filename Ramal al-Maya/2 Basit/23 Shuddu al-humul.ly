\version "2.18.2"

\header {
	title = "Shuddu al-Humūl"
	subtitle = "Ramal al-Maya #23"
	composer = "Page 111"
	meter = "Mizan Basit"
	copyright = "Transcription adapted from Yūnis al-Shāmī, Nūbāt al-Andalusiyya al-Maghribiyya: Nūba Ramal al-Maya (1984)"
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

\score {
	\relative d' {
		\clef "treble"
		\key c \major
		\time 3/4
		\tempo "Presto" 8 = 144

		s8 c'8 c4. b8 |

		\repeat volta 5 {
			d8^\segno c16( d b c a b g4) |
			c c b8 a |
			g a a a a4~ |
			a8 a g4.( a8 |
			f16 e d8 e f g) f |
			a a g( e f) g |
			d8.^\coda( c16 b8 c d4~ |
		}

		\alternative {
			{
				d8) c' c4. b8 |
			}
			{
				d,8\repeatTie c d4. e8 |
			}
		}

		\repeat volta 2 {
			f16( e d8 e f g4) |
			a8 a( g4.) f8 |
			f16( e f4 g16 a g f e d |
		}

		\alternative {
			{
				c8) c d4. e8 |
			}
			{
				c8\repeatTie c d4. e8 |
			}
		}

		f16( e d8 e f g) f |
		a a g( e f) g |
		d8.( c16 b8 c d4) |
		r8 c' c4. b8^\dsalcoda \bar "||"

		d,8.^\coda( c16 b8 c d4~ |
		d4-\continue)

	}

	\layout {}
	\midi {}
}
