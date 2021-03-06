\version "2.18.2"

\header {
	title = "Ghaybatuk zādnī ashwāq"
	subtitle = "Rasd #14"
	composer = "Page 237"
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
		\tempo "Allegretto" 4 = 112

		\partial 2

		g8 g a4~ |

		\repeat volta 5 {

			a8^\segno a a a a8. g16 |
			a8 b a g e8. d16 |
			c8 c c d e fis |
			g a16 b a8 g e8. d16 |
			c8 c c d e8. d16 |

		}

		\alternative {
			{ d4_\fine \bar "||" g8 g a4 | }
			{ d,4 c8 d e4 | }
		}

		\repeat volta 2 {

			d8 d c d e16 f e d |

		}

		\alternative {
			{ d4 c8 d e4 | }
			{ d4 c8 d e4 |}
		}

		d8 d c d e16 f e d |
		d4 g8 g a4^\segno \bar "||" |

	}
	\layout {}
	\midi {}
}
