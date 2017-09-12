\version "2.18.2"

\header {
	title = "Tushiyya"
	subtitle = "Rasd #16"
	composer = "Page 239"
	meter = "Mizan al-Qaʾim wa Nusf"
}

% VARIABLES

db = \bar "!"
dc = \markup { \italic { "D.C. al Fine" } }
fine = \markup { \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
message = \markup { \right-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
missing = \markup { { "Missing beat in score" } }

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 8/4
%		\set Timing.beamExceptions = #'()
%		\set Timing.baseMoment = #(ly:make-moment 1/4)
%		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Andantino" 4 = 72

	\repeat volta 2 {

		a'4 a8 b a4 g \db e8 fis g2. |
		a4 a8 b a4 g \db e8 fis g4 a8 c16 d b c a b |
		g4 e8 fis g4 a16 g a b \db g2 a4 g |
		e16-\missing f e d c8 d e4 d~ \db d8 e c e d2

	}

	\repeat volta 2 {

		d'4 d8 e d4 c \db a8 g b c d b16 c d8 b16 c |
		d4 d8 e d4 c \db a8 g a b g4 e16 fis g a |
		g4 e8 fis g4 a16 g a b \db g4 r4 a g |
		e16 f e d c8 d e4 d~ \db d8 e c e d2

	}

	\repeat volta 2 {

		e4 e8 e e4 a \db g e16 f e d c4 d |
		d4 d8 d c4 d \db e2 a4 g |
		e16 f e d c8 d e4 d~ \db d8 e c e d2_\fine

	}
}
