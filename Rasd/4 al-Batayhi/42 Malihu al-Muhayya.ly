\version "2.18.2"

\header {
	title = "Malīhu al-Muhayyā"
	subtitle = "Rasd #42"
	composer = "Page 275"
	meter = "Mizan al-Batayhi"
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
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Moderato" 4 = 96

		\partial 1.

		b'8 b b4~ \db b8 b4 a8 b c b a |

		\repeat volta 5 {
			g4^\segno g8 a b4 g \db a2 g4 g |
			d4 c d e~ \db e8 e4 e8 e4 f8_\accidentalerror e16 f |
		}

		\alternative {
			{
				g8 a16 b a8 g e4 d( \db c8) e( d) e d2~ |
				d4-\fine \bar "||" c4 b'8 b b4~ \db b8 b4 a8 b c b a |
			}
			{
				g8 a16 b a8 g e4 d \db c8 e d e d4 e16 fis g a |
				g fis e d c4 c8 d e4~ \db e8~ e4~ e8 e4 f8_\accidentalerror e16 f |
			}
		}

		\repeat volta 2 {
			g8 a16 b a8 g e4 d \db c8 e d e d4 e16 fis g a |
		}

		\alternative {
			{
				g16 fis e d c4 c8 d e4~ \db e8~ e4 e8 e4 f8_\accidentalerror e16 f |
			}
			{
				g16 fis e d c4 c8 d e4~ \db e8~ e4 e8 e4 f8_\accidentalerror e16 f |
			}
		}

		g8 a16 b a8 g e4 d \db c8 e d e d2~ |
		d4 c b'8 b b4~ \db b8 b4 a8 b c b a-\ds \bar "||"
	}

	\layout {}
	\midi {}
}
