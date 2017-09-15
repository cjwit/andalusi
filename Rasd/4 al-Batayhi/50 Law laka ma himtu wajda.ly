\version "2.18.2"

\header {
	title = "Law Lāka Mā Himtu Wajdā"
	subtitle = "Rasd #50"
	composer = "Page 287"
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
	\tempo "Moderato" 4 = 96

	r8 a'16( b) a8 g e4 a8 g |

	\repeat volta 5 {
		e8.^\segno c16~ c8 d e( c) d4 |
		a'8.( b16) a8 g e4 a8 g |
		e8. c16~ c8 d e( c) d g16 g |
		g8. g16~ g g g8~ g16 g8 g16 a8 g |
		e8. c16~ c8 d e( c) d g16 g |
		g8. g16~ g g g8~ g16 g8 g16 a8 g |
		e8. c16~ c8 d e( c) d g16 g |
		g8. g16~ g g g8~ g16 g8 g16 a8 g |
		g8 g~ g g fis g a4~ |
		a8 a16 b a8 g e4 a8 g |
		e8. c16~ c8 d e4 e16 f e d |
		c8. c16~ c8 d e c d4-\fine \bar "||"
	}

	\alternative {
		{
			a'8. b16 a8 g e4 a8 g |
		}
		{
			% written out repeat

			c,4 c8 d e16 f e d c8 d |
		}
	}

	e16 f e d c8 d e4 d |
	c4 c8 d e16 f e d c8 d |
	e16 f e d c8 d e4 d |

	% end written out repeat

	c4 c8 d e16 f e d c8 d |
	e16 f e d c8 d e4 d |
	a'8. b16 a8 g e4 a8 g-\ds \bar "||"
}
