\version "2.18.2"

\header {
	title = "Hubbik Yā Imīra al-Milāh"
	subtitle = "Rasd #55"
	composer = "Page 292"
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
	\tempo "Allegretto" 4 = 112

	\partial 4
	 r8 a' |

	 \repeat volta 5 {
		 a8.^\segno( a16~ a8 a) a4 bes8 a |
		 g8. f16~ f8~ f8~ f4 f8 g |
		 f8. f16~ f8 f e f g4 |
		 r8 f f g a4 bes8 a^\coda |
	 }

	 \alternative {
		 {
			 g8. e16~ e8 d e c d a' |
		 }
		 {
			 g8. e16~ e8 d e c d a' |
		 }
	 }

	 f8. f16~ f8 f f g f4~ |

	 \repeat volta 2 {
		 f8 f f f f4 f8 f |
		 f8. f16~ f8 f f4 g8 g |
		 g8. c,16~ c8 c d16 e f g a bes a g |
	 }

	 \alternative {
		 {
			 f8. f16~ f8 f f g f4 |
		 }
		 {
			 f8 f4 f8 f g f4~
		 }
	 }

	 f8 f f f f4 f8 f |
	 f8. f16~ f8 f f4 g8 g |
	 g8. c,16~ c8 c d e f4 |
	 g8. g16~ g8~ g~ g4 g8 g |
	 g8. g16~ g16 fis g8 a g b a |
	 g8. e16~ e8 d e c d a'-\dsalcoda \bar "||"

	 g8.^\coda e16~ e8 d e c d4 \bar "|."

}
