\version "2.18.2"

\header {
	title = "Atānī mina al-khuldi"
	subtitle = "Rasd #27"
	composer = "Page 252"
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
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Allegretto" 4 = 104

		\repeat unfold 5 {

			a'4. b8 a4 g \db e8 fis g a g4 g |
			a4 c8 b a4 g \db e r a g |
			e4 d2 d4 \db e8 d4 c8 a4 g |
			c4. d8 c4 d \db e8 fis g a g4 g |
			a4 c8 b a4 g \db e r a g |
			e4 d2 d4 \db e8 d4 c8 a4 g |

		}

		\alternative {
			{
				c4. d8 c4 d \db e8 fis g a g4 g |
				a4 c8 b a4 g \db e r a g |
				e4 d2 e4 \db d8 e c e d2-\fine |
			}
			{
				% written out repeat
				c4. d8 c4 d \db e8 fis g a g4 g |
			}
		}

		a4 c8 b a4 g \db e r a g |
		e d2 d4 \db e8 d4 c8 a4 g |

		c4. d8 c4 d \db e8 fis g a g4 g |
		a4 c8 b a4 g \db e r a g |
		e d2 d4 \db e8 d4 c8 a4 g |

		% end written out repeat

		c4. d8 c4 d \db e8 fis g a g4 g |
		a4 c8 b a4 g \db e4 r a g |
		e d2 e4 \db d8 e c e d2-\dc \bar "||"

	}

	\layout {}
	\midi {}
}
