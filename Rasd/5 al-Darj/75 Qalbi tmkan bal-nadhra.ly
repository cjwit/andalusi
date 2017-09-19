\version "2.18.2"

\header {
	title = "Qalbī Tmkan bal-Nadhrā"
	subtitle = "Rasd #75"
	composer = "Page 313"
	meter = "Mizan al-Darj"
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
continue = \markup { \right-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
coda = \markup { \musicglyph #"scripts.coda" }
error = \markup { { "Wrong number of beats in score" } }
repeaterror = \markup { { "Score appears to be missing repeat" } }
accidentalerror = \markup { { "Unclear accidentals" } }


% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 4/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1)
	\tempo "Moderato" 4 = 104

	\repeat volta 2 {
		r8 a'4 a g8 a b |
		c b a g fis g e4 |
		r8 e4 c d8 e4 |
		r8 g4 a g8 e d |
		c c d e d e d4-\fine^\coda |
	}

	\repeat volta 2 {
		r8 d4 d c8 d4~ |
		d8 d4 d c8 d4 |
		r8 d4 c~ c8 a4( |
		g8) c4 c d8 e4 |
		e8 g4 e d8 e d |
		c c d e d e d4-\dcalcoda \break |
	}

	\repeat volta 2 {
		r8^\coda c4 c d8 e16 f e d |
		c8 c d e d e d4 |
		r8 c4 c d8 e16 f e d |
		c8 c d e d e d4-\dc |
	}
}
