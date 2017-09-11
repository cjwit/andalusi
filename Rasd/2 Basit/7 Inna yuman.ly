\version "2.18.2"

\header {
	title = "Inna Yūmān"
	subtitle = "Rasd #7"
	composer = "Page 224"
	meter = "Mizan Basit"
}

\relative d' {
	\clef "treble" 
	\key c \major
	\time #'(2 2 2) 6/4
	\tempo "Andantino" 4 = 72

	\repeat volta 2 {

		d2 d4 c8 d \bar "!" e4 d |
		g2. fis8 g \bar "!" a2 |
		a4 bes8 a g4 f \bar "!" e8 d e f |
		g a g f e d e d \bar "!" c4 g'8 g |
		f16 g f e d4 g f8 e \bar "!" d4 c8 d |
		e2 e4 f \bar "!" g8. f16 a4 |
		g8. g16 f4 e d \bar "!" g8 a16 f g8 g16 a |
		f2. r8 f8 \bar "!" g8. a16 f4 |
		f8 g f g a2~ \bar "!" a4 r4
		
	}
	
	\repeat volta 2 {

		d,2 d4 c8 d \bar "!" e4 d |
		g2. fis8 g \bar "!" a2 |
		a4 bes8 a g4 f \bar "!" e8 d e f |
		g a g f e d e d \bar "!" c4 g'8 g |
		f16 g f e d4 g f8 e \bar "!" d4 c8 d |
		e2 e4 f \bar "!" g8. f16 a4 |
		g8 g f4 e d \bar "!" g8 a f g |
		f2 r2 \bar "!" g4 fis8 g |
		a4. c8 a4. c8 \bar "!" a4 r8 a8~ |
		a g fis g a2~ \bar "!" a4 r4 |
		a4 bes8 a g4. e16 fis \bar "!" g16 a g8~ g e16 fis |
		g a g8 r8 g e4 d \bar "!" g2 |
		a4 g f8 g f e \bar "!" d8. e16 c4 |
		d8 e d e f e f g \bar "!" f4 g |
		g fis8 g a4. c8 \bar "!" a4. c8 | 
		a4 r8 a4 g8 fis g \bar "!" a2 |
		a4 bes8 a g4. e16 fis \bar "!" g16 a g8~ g e16 fis |
		g a g8 r8 g e4 d \bar "!" g2 |
		a4 g f8 g f e \bar "!" d8. e16 c4 |
		d8 e d e f e f g \bar "!" d4 b |
		c4 d2 e4 \bar "!" f e |
		g8 a g f e d e d \bar "!" c4 g'8 g |
		f8. e16 d4 g f8 e \bar "!" d4 c8 d |
		e2 e4 f \bar "!" g8. f16 a4 |
		g8. g16 f4 e d \bar "!" g8 a16 g f8 g16 a |
		f2. r8 f8 \bar "!" g8. a16 f4 |
		f8 g f g a2~ \bar "!" a4 r4-"Fine" |

	}

	\repeat volta 2 {
		
		c4 d8 c b a b c \bar "!" d e d b~ |
		b8 b4 a8 b16 c b a g4 \bar "!" a b |
		c d8 c b a b c \bar "!" d e d b~ |
		b8 b4 a8 g4 b \bar "!" b2~ |
		b8 a g a b16 c b a g8 g \bar "!" a g a b |
		d16 c b a g4 a8 g a b \bar "!" g4 a8 b |
		g4 e d e16 fis g a \bar "!" g4 e8 d |
		g4. a8 b c d4 \bar "!" b8 b c e |
		d16 c b a g8 a b16 c b a g8 g \bar "!" a8 g a e' |

	}

	\alternative {
		{ d8 c16 d b c a b g4 r4 \bar "!" a b | }
		{ d8 c16 d b c a b g4 r4 \bar "!" a b | }

	}

	c4 d8 c b a b c \bar "!" d e d b~ |
	b8 b4 a8 b16 c b a g4 \bar "!" a4 b |
	c4 d8 c b a b c \bar "!" d e d b~ |
	b8 b4 a8 g4 b \bar "!" b2~ |
	b8 a g a b16 c b a g8 g \bar "!" a g b a |
	g2._\markup{ \italic { "D.C. al Fine" } } r4 \bar "!" r2 
	
	\bar "||"

}