\version "2.18.2"

\header {
	title = "Khafidh Allah (incomplete)"
	subtitle = "Rasd #8"
	composer = "Page 227"
	meter = "Mizan Basit"
}

% VARIABLES

db = \bar "!"
dc = \markup{ \italic { "D.C. al Fine" } }
fine = \markup{ \italic { "Fine" } } 
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }

% TRANSCRIPTION

\relative d' {
	\clef "treble" 
	\key c \major
	\time #'(2 2 2) 6/4
	\tempo "Moderato" 4 = 84

	\repeat volta 2 {

		d'8 e d c a g a16 g a b \db g4. d'8 |
		d e d c a g a16 g a b \db g4 e8 fis |
		g4~ g8 g4 g a16 b \db a8 g16 fis e4 |
		a8. g16 a8. g16 a8 b a g \db e16 f e d c8 d |
		d2 e8. d16 c8 d \db e2 |
		a8. g16 a8. g16 a8 b a g \db e16 f e d c8 d |
		e8 d e16 d c8 d4 g \db d_\fine r4
	}
	
	\repeat volta 2 {

		c4. e8 e4 c8 e \db e4~ e8 e~ |
		e8 e4 e16 f e d e4 fis8 \db g a16 b a8 g |
		e d e16 d c8 d e e16 fis g a \db g fis e d c4_\incomplete
	}
}