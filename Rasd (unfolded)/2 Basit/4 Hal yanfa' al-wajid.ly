\version "2.18.2"

\header {
	title = "Hal yanfaʿ al-wasjid"
	subtitle = "Rasd #4"
	composer = "Page 218"
	meter = "Mizan Basit"
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

\score {
	\relative d' {
		\clef "treble"
		\key c \major
		\time #'(2 2 2) 6/4
		\tempo "Andante" 4 = 63

		\partial 4 { d4 }

		\repeat unfold 2 {

			e d e8 fis g g g4 fis8 g | a g a4 e8 e e fis g a16 b g4 |
			e e16 f e d c4 e e8 fis g a | g16 fis e d c8 d e4 f8 e d16 e d e c4 |
			e8 e e fis g a16 b a8 g e16 f e d c8 d |

		}

		\alternative {
			{ e8 d e16 d c8 d4 g d d |  }
			{ e8 d e16 d c8 d4 g d d |  }
		}

		e4 d e8 fis g g g4 fis8 g | a g a4 e8 e e fis g a16 b g4 |
		e4 e16 f e d c4 e e8 fis g a | g16 fis e d c8 d e4 f8 e d16 e d e c4 |
		e8 e e fis g a16 b a8 g e16 f e d c8 d e d e16 d c8 d4 g d a'

		\repeat unfold 7 {

			a4~ a16 bes a bes a bes a g f8 f g a g f |
			e d e16 d c8 d f f g a16 g f e32 d c4 |
			f4. g8 a16 bes a g f8 f g a g f |
			e d e c d2 e8. f16 g4 |
			e4 e16 f e d c4 e e8 fis g a |
			g16 fis e d c8 d e4 f8 e d4 c |
			f8 e f e f e f g a16 g f e d8 c |
			d4~ d8 e f g f e d c d4 |
			e d g( a8) g g4 fis8 g |
			a g a4 e8 e e fis g a g4 |
			e4 e8. d16 c4 e e8 fis g a |
			g16 fis e d c8 d e4 f8 e d4 c |
			e8 e e fis g a16 b a8 g e8. d16 c8 d |

		}

		\alternative {
			{ e8 d e16 d c8 d4 g d_\fine \bar "||" g | }
			{ e8 d e16 d c8 d4 g d g_\dc \bar "||" }
		}
	}

	\layout {}
	\midi {}
}
