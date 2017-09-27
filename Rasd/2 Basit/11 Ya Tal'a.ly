\version "2.18.2"

\header {
	title = "Ya Talʿa"
	subtitle = "Rasd #11"
	composer = "Page 233"
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
		\tempo "Allegretto" 4 = 100

		\partial 2

		g4 a |

		\repeat volta 5 {

			a8 a4 a8 a4 |
			a8 a16 a bes8 a g g |
			f16 e d8 e f g a |
			b c b a g f |
			e g f e d4~ |
			d4 d e |
			c8 d4 e16 f g8 f |
			d16 e c8 d e d c |
			a g c4 e |
			d8 e16 d c8 e d4~ |

		}

		\alternative {

			{ d4 g a | }
			{ d,4 f4. g8 |}

		}

		\repeat volta 2 {

			a8 b c d c b |
			a g a4 g |
			f8 f4 g8 f e16 d |
			c8 f f4. f8 |
			g f a g c16 bes a g |

		}

		\alternative {

			{ f4 f4. g8 | }
			{ f4 f4. g8 | }

		}

		a8 b c d c b |
		a g a4 g |
		f8 f4 g8 f8 e16 d |
		c8 f f4. f8 |
		g f a g a16 bes a g |
		f4 f4. g8 |
		a b c d c b |
		a g a a g4 |
		e4 d8 d e16 d c8 |
		d4 d e |
		c8 f4 e16 f g8 f |
		d16 e c8 d8 e d c |
		a g c4 e |
		d8 e16 d c8 e d4~_\continue \bar "|."

	}
	\layout {}
	\midi {}
}
