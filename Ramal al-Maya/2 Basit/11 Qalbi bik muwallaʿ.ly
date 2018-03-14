\version "2.18.2"

\header {
	title = "Qalbī bik Muwallaʿ"
	subtitle = "Ramal al-Maya #11"
	composer = "Page 99"
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
		\time #'(2 2 2) 6/4
		\tempo "Andantino" 4 = 76

		\repeat volta 3 {
			b4 c d2~ \db d4 d |
			d d8( e) d( c b a \db b16 c b a g4) |
			b c d( e \db f) d |
		}

		\alternative {
			{
				e4 c d2~ \db d4 r |
			}
			{
				e4 c d2~ \db d4 f8 f |
			}
		}

		f2.~ f8 g \db a8.( g16 f8 a |
		g2.) g8 g \db g4. g8 |
		g8( f g4) d4.( e8 \db c4) r8 f8 |
		f4. g8 a( bes a g) \db f4 f8 f |
		f4. g8 a4.( c8 \db b16 c b a g4) |
		a4 b c d \db c a |
		b8 g fis g a2~ \db a4 r |

		\repeat volta 2 {
			f2. g8( a) \db f4. g8 |
			a4( f8 a g2~ \db g4) r |
			f4( e8 f g4) f8( e) \db d4( c |
			d8 e f) g a( bes a g \db f4 c) |
			f( g) a4. c8 \db b4. c8 |
			b4. c8 b( c b c \db b16 c b a g4) |
			a4 b c d \db c a |
			b8 g fis g a2~ \db a4^\dc_\fine r |
		}

	}

	\layout {}
	\midi {}
}
