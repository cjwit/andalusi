\version "2.18.2"

\header {
	title = "Yā ʿĀshiqīn"
	subtitle = "Ramal al-Maya #22"
	composer = "Page 110"
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
		\tempo "Vivace" 8 = 138

		s8 a'8 a a a4(

		\repeat volta 5 {
			a4^\segno) g8 c16( d) b( c) a( b) |
			g8( f) g8 a16( bes a8) g |
			f e g f e d |
			c4 a'8 a16( bes a8) a |
			b16( c b a) g4 a8 b |
			c b a g f e |
			g f e d c4 |
			c8 d16( e d8) e f( d |
			e^\coda f) g( f) a a |
		}

		\alternative {
			{
				g8 a a a a4
			}
			{
				g8 g g g g4(
			}
		}

		\repeat volta 2 {
			g8) g f g a16( bes a8) |
			g g f g a16( bes a8) |
		}

		\alternative {
			{
				g8 g g g g4 |
			}
			{
				g8 g g g g4(
			}
		}

		g8) g f g a4 |
		a8 a a a a4^\dsalcoda \bar "||"

		e8^\coda f g f a a | g8-\fine

	}

	\layout {}
	\midi {}
}
