\version "2.18.2"

\header {
	title = "Ihtakam Fiyya"
	subtitle = "Rasd #52"
	composer = "Page 289"
	meter = "Mizan al-Batayhi"
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
ds = \markup { \right-align { \italic { "D.S. al Fine" } } }
dsalcoda = \markup { \right-align { \italic { "D.S. al Coda" } } }
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
	\tempo "Allegretto" 4 = 104

	\repeat volta 2 {
		a'4. g8 e4 fis8 g |
		a b a g e8. d16 d4 |
		d4 d8 d c4 a |
		g8. c16~ c8 d e16 f e d c8 d |
		e16 f e d c8 d e4 d-\fine |
	}

	\repeat volta 2 {
		g8. g16~ g8 g a g b a |
		g8. e16~ e8 d e c d4 |
	}

	g8. g16~ g8 g a g b a |
	g8. e16~ e8 d e c d4-\dc \bar "||"

}
