\version "2.18.2"

\header {
	title = "In Kunta Lasta Maʿī"
	subtitle = "Rasd #12"
	composer = "Page 235"
	meter = "Mizan Basit"
}

% VARIABLES

db = \bar "!"
dc = \markup{ \italic { "D.C. al Fine" } }
fine = \markup{ \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
message = \markup { \right-align "Continue..." }

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 3/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1)
	\tempo "Allegretto" 4 = 104

	r8 g4 a a8 |

	\repeat volta 3 {

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
