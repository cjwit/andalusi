\version "2.18.2"

\header {
	title = "In Kunta Lasta Maʿī"
	subtitle = "Rasd #12"
	composer = "Page 235"
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
		\tempo "Allegretto" 4 = 104

		r8 g4 a a8 |

		\repeat unfold 3 {

			a8 g b a g a |
			g e4 e d16 e |
			c8 d c d e fis |
			g g4 a a8 |
			a g b a g a |
			g e4 d16 e c8 d |
			e d c e d4~ |

		}

		\alternative {
			{ d8 g4 a a8 | }
			{ d,4_\fine \bar "||" }
		}

	}
	\layout {}
	\midi {}
}
