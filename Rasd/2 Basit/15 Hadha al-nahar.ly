\version "2.18.2"

\header {
	title = "Hadha al-nahār"
	subtitle = "Rasd #15"
	composer = "Page 238"
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
	\tempo "Allegretto" 4 = 132

	\partial 2

	g4 a |

	\repeat volta 5 {

		a8 a4 a8 a g |
		b a g a g4 |
		e4 d8 e c e |

	}

	\alternative {
		{ d4 g a | }
		{ d,8 c c d e f | }
	}

	\repeat volta 2 {

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
