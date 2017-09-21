\version "2.18.2"

\header {
	title = "al-Lāym Lā Tlumnī"
	subtitle = "Rasd #91"
	composer = "Page 336"
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

	e8 e4 e8 |

	d4~^\segno d8 d4 d8 |
	d4 c8 d e16 f e d |
	c4 c8( d) e fis |
	g8 a16( b) a8 g e4 |
	d4 c8 d e4 |
	d8 e16( d) c8 e d4 |
	c'8 b a g g16 a g fis |
	e8 g g8. a16 g fis e d |
	c4 c8 d e4 |
	d8 e16( d) c8 e d4~ |
	d4-\fine \bar "||" e8 e4 e8^\ds \bar "||"

}
