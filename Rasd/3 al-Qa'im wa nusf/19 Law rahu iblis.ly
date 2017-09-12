\version "2.18.2"

\header {
	title = "Law rāhu iblīs"
	subtitle = "Rasd #19"
	composer = "Page 242"
	meter = "Mizan al-Qaʾim wa Nusf"
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
fine = \markup { \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
continue = \markup { \right-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
coda = \markup { \musicglyph #"scripts.coda" }
missing = \markup { { "Missing beat in score" } }

% TRANSCRIPTION

\relative d'' {
	\clef "treble"
	\key c \major
	\time 8/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Moderato" 4 = 80

	d4. e8 d4 c \db a8 g a b g2~ |
	g4 e8 fis g4 a8 b \db g2 e4 fis |
	g4 g8 g g4 g~ \db g8 a fis g a2~ |
	a4 a8 a a4 g \db a4 b a g |
	e16 f e d c8 d d4 d~ \db d8 c4 d8 e2~ |
	e4 g8 g fis4 g \db a b a g |
	e16 f e d c8 d e4 d~ \db d8 e16 d c8 e d2 |
	e2. e4 \db d2 e8 fis g a |
	g4 e16 f e d c4 d~ \db d8 c4 d8 e2~ |
	e4 g8 g fis4 g \db a b a g |
	e16 f e d c8 d e4 d~ \db d8 e16 d c8 e d2-\fine |

	\repeat volta 2 {

		e2. e4 \db d2 e8 fis g a |
		g4 e16 f e d c4 c \db d8 e d e d2
	}

	e2. e4 \db d2 e8 fis g a |
	g4 e16 f e d c4 c \db d8 e d e d2-\dc \bar "||"
}
