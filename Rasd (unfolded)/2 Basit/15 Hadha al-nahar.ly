\version "2.18.2"

\header {
	title = "Hadha al-nahār"
	subtitle = "Rasd #15"
	composer = "Page 238"
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

% TRANSCRIPTION

\score {
	\relative d' {
		\clef "treble"
		\key c \major
		\time 3/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1)
		\tempo "Allegretto" 4 = 132

		\partial 2

		g4 a |

		\repeat unfold 5 {

			a8 a4 a8 a g |
			b a g a g4 |
			e4 d8 e c e |

		}

		\alternative {
			{ d4 g a | }
			{ d,8 c c d e f | }
		}

		\repeat unfold 2 {

			e8 f e d c4 |
			e4 d8 e4 d8 |

		}

		\alternative {
			{ c8 c c d e f | }
			{ c8 c c d e f | }
		}

		e8 f e d c4 |
		e4 d8 e4 d8 |
		c8 c c c4 d8 |
		e f e d c4 |
		e4 d8 e4 d8 |
		c8 c c c4 d8 |
		e f e d c4 |
		e4 d8 e4 d8 |
		c8 c c c4 d8 |
		e4 g a |
		a8 a4 a8 a4 |
		a8 b a g e4 |
		d8 c d e4 d8 |
		d4-"rall." r16 g g8 g r16 g16 |
		g8 g fis g a g
		| a4_\fine \bar "|."

	}
	\layout {}
	\midi {}
}
