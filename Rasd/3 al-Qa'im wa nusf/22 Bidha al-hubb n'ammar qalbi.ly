\version "2.18.2"

\header {
	title = "Bidha al-hubb nʿammar qalbī"
	subtitle = "Rasd #22"
	composer = "Page 246"
	meter = "Mizan al-Qaʾim wa Nusf"
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
	\relative d'' {
		\clef "treble"
		\key c \major
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Moderato" 4 = 92

		\partial 1..

		r8 e,8~ e4 e \db d8 e16 d c8 e d2~ |

		\repeat volta 5 {

			d4^\segno r8 d4~ d8 d4 \db d4. e8 c4 d |
			e8 fis g a g4 g~ \db g8 a16 g fis8 g a2~ |
			a4 a8 b a4 g \db e fis g c8( b) |

		}

		\alternative {
			{
				d8 c b a g4 g~ \db g8 a16 g fis8 g a2~ |
				a4 a8 b a4 g \db e4. d8 c4 d |
				g8 f e d c4 e \db d8 e c e d2~ |
				d4-\fine \bar "||" r8 e8 e4 e \db d8 e c e d2
			}
			{
				d'8 c b a g4 g~ \db g8 a16 g fis8 g a2~ |
			}
		}

		\repeat volta 2 {

			a4 r8 b a4 g \db e fis g c8 b |

		}

		\alternative {
			{ d8 c b a g4 g~ \db g8 a16 g fis8 g a2 | }
			{ d8 c b a g4 g~ \db g8 a16 g fis8 g a2~ | }
		}

		a4 r8 b a4 g \db e d c d |
		g8 f e d c4 e \db d8 e c e d2~ |
		d4 r8 e~ e4 e \db d8 e c e d2-\ds \bar "||"


	}

	\layout {}
	\midi {}
}
