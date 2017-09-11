\version "2.18.2"

\header {
	title = "Hibbī maʿī fī dārī"
	subtitle = "Rasd #13"
	composer = "Page 236"
	meter = "Mizan Basit"
}

% VARIABLES

db = \bar "!"
dc = \markup{ \italic { "D.C. al Fine" } }
fine = \markup{ \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
message = \markup { \right-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 3/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1)
	\tempo "Allegretto" 4 = 108

	\partial 2

	c8 d e4 |

	\repeat volta 5 {

		d8-\segno d c d e4 |
		d8 c d e16 fis g8 g |
		g fis g a4 a8 |
		a g a b4 a8 |
		g4 e8 fis g a |
		g a16 b a8 g e8. d16 |
		c4 c8 d e4 |
		d8 d c e d4~ |

	}

	\alternative {
		{ d4_\fine \bar "||" c8 d e4 | }
		{ d4 c8 d e4 | }
	}

	\repeat volta 2 {

		d8 d c d e4 |
	}

	\alternative {
		{ d4 c8 d e4 | }
		{ d4 c8 d e4 | }
	}

	d8 d c e4 | d c8 d e4-\segno \bar "||"

}
