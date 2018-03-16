\version "2.18.2"

\header {
	title = "Tushiyya"
	subtitle = "Ramal al-Maya #27"
	composer = "Page 115"
	meter = "Mizan al-Qaʾim wa Nusf"
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

% TRANSCRIPTION

\score {
	\relative d' {
		\clef "treble"
		\key c \major
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Andante" 4 = 60

		\repeat volta 2 {
			e16 f g8 f e e c e e \db f d e f g f16 a g4 |
		}

		\alternative {
			{
				c,8. c16 d4 b c \db d4. g8 f g d4 |
			}
			{
				c8. c16 d4 b c \db d2 e8 d e f |
			}
		}

		\repeat volta 2 {
			g8 a g f e g f g \db e8. f16 e f e d c4 g'8 g |
		}

		\alternative {
			{
				g4 f e8 g f a \db g f16 e d4 e8 d e f |
			}
			{
				g4 f e8 g f a \db g8 f16 e d8 g f g d4 |
			}
		}

		\repeat volta 2 {
			b4 r8 b4 c8 b16 c b a \db g8 a4 b8 c b c d |
			c4 d8 e f g f4 \db e8. d16 c4 f8 e d c |
			b8. b16 c8 b4 c8 b16 c b a \db g8 a4 b8 c b c d |
		}

		\alternative {
			{
				c4 d8 e f g f4 \db e8. d16 c4 d2 |
			}
			{
				c4 d8 e f g f4 \db e8. d16 c4 d4. c16 b |
			}
		}

		c4 e8 e e4 e \db f8 d e f g f16 a g4 |
		c,8. c16 d4 b c \db d e16 fis g a g fis e8 e16 fis g a |
		g16 fis e8 e16 fis g a g4 e8 e \db f8 d e f g f16 a g4 |
		c,8. c16 d4 b c \db d2-\continue

	}

	\layout {}
	\midi {}
}
