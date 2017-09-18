\version "2.18.2"

\header {
	title = "Jamīʿ Man Dkhal"
	subtitle = "Rasd #65"
	composer = "Page 303"
	meter = "Mizan al-Darj"
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
	\tempo "Andantino" 4 = 76

	\repeat volta 5 {
		c8 b c d16 c d2~ |
		d4 g8 g16 a g fis ees d c8 d |
		c4 d8 c4 d8 e? fis |
		g a16 b a8 g e16 f? e d c8 c |
		c2 d4 e |
	}

	\alternative {
		{
			d8 e c e d2-\fine |
		}
		{
			d8 e c e d4. g8 |
		}
	}

	\repeat volta 5 {
		g2 g4 g |
		g8 e fis g a4. a8 |
		a8 b a4 g e |
	}

	\alternative {
		{
			d8 e c e d4. g8 |
		}
		{
			d8 e c e d2-\dc \bar "||"
		}
	}

}
