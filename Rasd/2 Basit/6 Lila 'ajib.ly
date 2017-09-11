\version "2.18.2"

\header {
	title = "Līla ʿAjīb"
	subtitle = "Rasd #6"
	composer = "Page 222"
	meter = "Mizan Basit"
}

\relative d' {
	\clef "treble" 
	\key c \major
	\time #'(2 2 2) 6/4
	\tempo "Andantino" 4 = 69

	\partial 4 { g4 }
	
	\repeat volta 5 {

		a2~ a16 bes a g f4 \bar "!" g8 a g f | e d e c d2~ \bar "!" d4 r4 |
		d4~ d16 e c8 d e16 f g8 f \bar "!" e4 c | d4. e8 f g4 f8 \bar "!" e4 d |
		e4 f g a~ \bar "!" a b8 c | a4 r8 f g a g f \bar "!" e16 f e d c8 d |
		e8 d e16 d c8 d2 \bar "!" g4~ g8 f~ | f e4 d8 c4 e \bar "!" e16 f e d c8 d |		e8 d e c d e e16 f g a \bar "!" g f e d c8 d | e4 g8 f16 e d8 c d4 \bar "!" e8 f g4 |
		e4 e16 f e d c4 a' \bar "!" g16 f e d c8 d | 
		
	}
	
	\alternative { 
		{ e8 d e16 d c8 d4 g \bar "!" d_\markup{ \italic { "Fine" } } \bar "||" g | }
		{ e8 d e16 d c8 d4 g \bar "!" d d8 e | }
	}

	\repeat volta 2 {

		f8 g f2 f8 e \bar "!" f e f e | f g f16 e d8 e4 f \bar "!" g a |
		a g f8 g f e \bar "!" d4 g~ | g f e d \bar "!" c c |
		d8 c d e c4 d8 e \bar "!" f g f16 g e f | d8 c d16 e f g f4 r8 f8 \bar "!" g8. a16 f4 |

	}

	\alternative {
		{ g8 a f g f2( \bar "!" c4) d8 e | }
		{ g8 a f g f2 \bar "!" c4 d8 e | }

	}

	f8 g f2 f8 e \bar "!" f e f e | f g f16 e d8 e4 f \bar "!" g a |
	a g f8 g f e \bar "!" d4 g~ | g f e d \bar "!" c c |
	d8 c d e c4 d8 e \bar "!" f g f16 g e f | d8 c d16 e f g f4 g \bar "!" a2~ |
	a16 bes a g f8 f g a g f \bar "!" e16 f e d c8 d | e8 d e16 d c8 d2 \bar "!" g4~ g8 f~ |
	f8 e4 d8 c4 e8 e \bar "!" e16 f e d c8 d | e d e c d e e16 f g a \bar "!" g f e d c8 d | 
	e4 g8 e16 e d8 c d4 \bar "!" e8. f16 g4 | e4 d16 f e d c4 a'8 a \bar "!" g16 f e d c8 d | 
	e8 d e16 d c8 d4 g \bar "!" d g_\markup{ \italic { "D.C. al Fine" } }
	
	\bar "||"

}