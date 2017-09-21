\version "2.18.2"

\header {
	title = "Fī ʿIshqatī Hāra al-Tibīb"
	subtitle = "Rasd #88"
	composer = "Page 330"
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

\relative d' {
	\clef "treble"
	\key c \major
	\time 3/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1)
	\tempo "Andantino" 4 = 76

	\partial 2

	c8 c4 d8 |

	\repeat volta 5 {
		e8^\segno f e f e16 f e d |
		c4 d8 e d e |
		d2. |
		g4 f8 e c d |
		c8. d16 e8 d g16 f e d |
		c4 c8 c4 d8 |
		e8 f e g e16 f e d |
		c4 d8 e d e |
		d2. |
		d8 e d c a4 |
		g8. d'16 d8 e d c |
		a g a b g4 |
		e'16 d c8 d e d e |
		d2. |
		d8 e d c a4( |
		g8.) d'16 d8 e d c |
		a( g) a b g4 |
		e'16( d) c8 d e d e |
		d8. e16 e8. f16 e f e d |
		c4 c8 c4 d8 |
		e f e g e16 f e d |
		c4 d8 e( d) e |
		d2. |
		g4 f8 e c e |
		c2.~ |
		c8. c16 c8 a4 g8 |
		c4. d8 e16 f e d |
		c8 c d e d e |
	}

	\alternative {
		{
			d4-\fine \bar "||" c8 c4 d8 |
		}
		{
			d8. bes'16 a g f e d4 |
		}
	}

	\repeat volta 2 {
		g4 f8 e c d |
		c8. b16 a g a b c4 |
		e16 d c8 d e c e |
		d8. bes'16 a g f e d4 |
	}

	g4 f8 e c d |
	c8. b16 a g a b c4 |
	e16 d c8 d e c e |
	d4 c8 c4 d8-\ds \bar "||"

}
