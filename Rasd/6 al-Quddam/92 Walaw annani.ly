\version "2.18.2"

\header {
	title = "Walaw Annanī"
	subtitle = "Rasd #92"
	composer = "Page 337"
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

	a'8 a a b

	\repeat volta 3 {
		a8 g e4 g16 fis g8 |
		a4 a8 b a g |
		e4 d8 d4 d16 c |
		d4 e16 fis g a g fis ees d |
		c4 c d |
		a'4 g16( fis) g8( fis) ees |
		d4 a'8 a a b |
		a g e4 g16 fis g8 |
		a4 a8 b a g |
		e4 d8 d4 d16 c |
		d4 e16 fis g a g fis ees d |
		c4 c d |
		a' g16 fis g8( fis) ees |
		d4 ees16 fis g a g fis ees d |
		c8 b b b4 c8 |
		e4( d) e8 fis |
		g8 a16 b a8 g fis ees |
		d4 ees16 fis g a g fis ees d |
		c8 b b b4 c8 |
		e4( d) e8 fis |
		g a16 b a8 g fis ees |
		d4 a'8 a a b |
		a g e4 g16 fis g8 |
		a4 a8 b a g |
		e4 d4. d16 c |
		d4 e16 fis g a g fis ees d |
		c4 c d |
		a'4 g16( fis) g8 fis ees |
		d8. d16 ees fis g a g fis ees d |
		c8 b b b4 c8 |
		e4( d) e8 fis |
		g a16( b) a8 g fis ees |
	}

	\alternative {
		{
			d4 a'8 a a b |
		}
		{
			d,4 r2 \bar "|."
		}
	}
}
