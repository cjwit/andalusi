\version "2.18.2"

\header {
	title = "Ya ʿAthūlī"
	subtitle = "Rasd #10"
	composer = "Page 231"
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
		\tempo "Moderato" 4 = 96

		\partial 2

		a'4. a8 |

		\repeat volta 5 {

			a16 bes a g f8 g a16 bes a g |
			f4 c'8 b d c |
			a8. g16 f8 g a16 bes a g |
			f4 f8 f4 e16 f |
			g8 f e d e f16 g |
			e f d e c4 d8. d16 |
			e4 g8 g g g |
			g16 fis e8 fis g a4~ |
			a4 g8 e fis g |
			a b c d c b |
			a g a a g4 |
			e8 d e16 d c8 d4~ |
			d g g |
			g16 a f8 a g f4 |
			a8 g f4 g16 a f8 |
			g16 a f8 g a a16 bes a g |

		}

		\alternative {

			{ f4_\fine \bar "||" a4. a8 | }
			{ f4 f4. g8 | }

		}

		\repeat volta 2 {

			a8 b c d c b |
			a g a a g4 |
			f8 f4 g8 f e16 d |
			c8 f f4~ f8 f |
			g f a g a16 bes a g |

		}

		\alternative {

			{ f4 f4. g8 | }
			{ f4 f4. g8 | }

		}

		a8 b c d c b |
		a g a a g4 |
		e8 d e16 d c8 d4~ |
		d g g |
		g16 a f8 a g f4 |
		a8 g f4 g16 a f8 |
		g16 a f8 g a a16 bes a g |
		f4 a4. a8_\dc \bar "||"

	}
	\layout {}
	\midi {}
}
