\version "2.18.2"

\header {
	title = "Sayyad al-Rusil"
	subtitle = "Ramal al-Maya #25"
	composer = "Page 113"
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
		\tempo "Presto" 8 = 160

		\partial 2

		d'8 d d4 |

		\repeat volta 5 {
			d4 e8 d c4 |
			a bes8 a g4~ |
			g f8( e f) g |
			d4 c16( b c8) d( e |
			f e) f( e f) g |
			d4 c16( b c8) d4~ |
		}

		\alternative {
			{
				d4-\fine \bar "||" d'8 d d4 |
			}
			{
				d,4 e8 f g4 |
			}
		}

		\repeat volta 2 {
			g4 g8 g g4 |
			g4 f8 a g8( f16 e |
		}

		\alternative {
			{
				d4) e8 f g4 |
			}
			{
				d4\repeatTie e8 f g4 |
			}
		}

		g4 g8 g g4 |
		g f8 g a4~ |
		a f8( e f) g |
		d4 c16( b) c8 d( e |
		f e) f( e f) g |
		d4 c16( b) c8 d4~ |
		d d'8 d d4^\ds \bar "|."

	}

	\layout {}
	\midi {}
}
