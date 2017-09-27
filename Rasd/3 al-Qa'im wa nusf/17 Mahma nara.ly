\version "2.18.2"

\header {
	title = "Mahmā nara"
	subtitle = "Rasd #17"
	composer = "Page 240"
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
		\tempo "Andantino" 4 = 72

		\partial 4

		a4 |

		\repeat volta 5 {

			a4 c8 b a4 g \db e8 fis g4 a g |
			e16 f e d c8 d e4 d~ \db d8 e c e d2~ |
			d4 r8 g g4 a8 b \db g2 a8 c b a |
			g4. g8 g4 g~ \db g8 a fis g a2~ |
			a4 r8 a a4 g \db a4 b a g-\coda |

		}

		\alternative {
			{ e16 f e d c8 d e4 d~ \db d8 e c e d4 a' | }
			{ e16 f e d c8 d e4 d~ \db d8 e c e d2 | }
		}

		d4 r8 c8 d4 d \db e2 a4 g |

		\repeat volta 2 {

			e16 f e d c8 d e4 d~ \db d8 e c e d( e) e16 f g a |

		}

		\alternative {
			{ g16 f e d c8 c c4 d \db e2 a4 g | }
			{ e16 f e d c8 c c4 d \db e2 a4 g | }
		}

		e16 f e d c8 d e4 d~ \db d8 e c e d4 a'-\segno |

		\repeat volta 2 {
			e16-\coda f e d c8 d e4 d~ \db d8 e c e d2~ |
		}

		d4-\continue

	}

	\layout {}
	\midi {}
}
