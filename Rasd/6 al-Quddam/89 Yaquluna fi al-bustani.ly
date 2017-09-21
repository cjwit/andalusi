\version "2.18.2"

\header {
	title = "Yaqūlūna fī al-Bustāni"
	subtitle = "Rasd #89"
	composer = "Page 332"
	meter = "Mizan al-Quddam"
	copyright = "Transcription adapted from Yūnis al-Shāmī, Nūbāt al-Andalusiyya: Nūba al-Rasd (2009)"
	tagline = ""
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
ds = \markup { \center-align { \italic { "D.S. al Fine" } } }
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

	r8 d d d g4 |
	f8^\segno e d c d e|
	f2 f8 e |
	g f e d e16 f g a |
	g f e d c4 g' |
	f8 e d c d e |
	f2 f8 e |
	g f e d e c |
	d4 g g |

	g2.~ |
	g8 g4 g8 g4~ |
	g fis8 g a4~ |
	a d8 d d e |
	d c a g a16 b a b |
	g4 e8 fis g a16 b |
	g8 e16 c d4. c8 |
	d4 e16 f? e f e8. d16 |
	c4 c d |
	e d8 e c e |
	d4 r4 d8 e |
	f e f g e16 f e d |
	c4 e8 d e16 f e d |
	c4 e8 d e c |
	d4 r d8 e |
	f e f g e16 f e d |
	c4 e8 d e16 f e d |
	c4 e8 d e c |
	d2. |
	a'8 a a g a b |
	a g g d g a |
	g f e d e c |
	d4 r e8 e |
	e4 d8 c4 d8 |
	d8 g g g g a |
	g e4 e8 d16 c d8 |
	c4. d16 e c4~ |
	c8 c c a4 g8 |
	c4~ c8 d e16 f e d |
	c8 c d e d e |
	d8-\fine \bar "||" d d d g4^\ds \bar "||"
}
