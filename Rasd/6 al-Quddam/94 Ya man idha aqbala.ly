\version "2.18.2"

\header {
	title = "Yā Man Idha Aqbala"
	subtitle = "Rasd #94"
	composer = "Page 340"
	meter = "Mizan al-Quddam"
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
		\tempo "Andantino" 4 = 76

		\partial 2

		g4 f8 e |

		% changing repeat structure

		\repeat volta 3 {
			d16 e c8 d16 e f g f4~ |
			f f8 e16 f g8 f |
			e8 d e16 f g a g f e d |
			c4 g' f8 e |
			d16 e c8 d16 f e g f4~ |
			f f8 e16 f g8 f |
			e d e c d4 |
			g g fis8 g |
			a2 d4 |
			d8 d4 c8 d8( e) |
			d c a4( g8) c |
			d e d e d4~ |
			d r d |
			d8 d4 c8 d( e) |
			d c a4( g8) c |
			d e d e d4 |
			e8. f16 e f e d c4 |
			c,8 d4 e8 f e |
			f a g4 e16 d c8 |
			d e( d) e d4~ |
			d4 r g |
			f8 e4 d16( e) c4~ |
			c8 d16 e c4. c8 |
			c a4 g8 c4~ |
			c8 d e16 f e d c8 c |
		}

		\alternative {
			{
				d8 e d e d4~ |
				d4 g f8 e |
			}
			{
				d8 e d e d8. d16 |
				d8 d g4 f8 e |
			}
			{
				d8 e d e d4~ |
				d r2 \bar "|."
			}
		}

	}

	\layout {}
	\midi {}
}
