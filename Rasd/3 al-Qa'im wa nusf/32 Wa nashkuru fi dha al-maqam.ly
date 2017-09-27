\version "2.18.2"

\header {
	title = "Wa Nashkuru fī Dhā al-Maqām"
	subtitle = "Rasd #32"
	composer = "Page 257"
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

	\relative d' {
		\clef "treble"
		\key c \major
		\time 4/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Prestissimo" 8 = 192

		r8. d16~ d8 d4 c8 d4~ |

		\repeat volta 2 {

			d8.^\segno d16~ d8 d4 c8 d4~ |
			d8. e16~ d8 d4 c8 a4 |

		}

		\alternative {
			{
				g8. d'16~ d8 d4 c8 d4~ |
			}
			{
				g,8. d'16~ d8 d4 c8 d4~ |
			}
		}

		d8. d16~ d8 d4 c8 d4~ |
		d8. e16~ e8 d4 c8 a4( |
		g8.) c16~ c8 c4 d8 e fis |
		g8. g16~ g8 a4 g8 e16 f e d |
		c8 c d e( d) e d4~^\coda |
		d8. g16~ g8 g fis g a4~ |

		\repeat volta 5 {

			a8 a4( b8) a g e4 |
		}

		\alternative {
			{
				d8. d16~ d8 e16( fis g8 a) g4~ |
				g8. g16~ g8 g fis g a4~ |
			}
			{
				d,8. d16~ d8 e~ e e d4~ |
				e8. d16~ d8 d4 c8 d4-\dsalcoda \bar "||"
			}
		}

		g8.^\coda_"rall." g16 g8 g fis g a g | a1 \bar "|."

	}

	\layout {}
	\midi {}
}
