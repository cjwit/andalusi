\version "2.18.2"

\header {
	title = "Haniya ya qalbi"
	subtitle = "Rasd #5"
	composer = "Page 220"
	meter = "Mizan Basit"
}

\relative d' {
	\clef "treble" 
	\key c \major
	\time #'(2 2 2) 6/4
	\tempo "Andantino" 4 = 66

	\partial 4 { g4 }
	
	\repeat volta 5 {

		a2~ a16 bes a g f8 f g a g f | e d e16 d c8 d f f g a16 g f e d4 |
		f4 f8 g a16 bes a g f8 f g a g f | e d e16 d c8 d4 g d r4 |
		g fis8 g a4 b8 c a4 r8 a8 | a g fis g a2~ a4 r4 |
		d4. d8 a4 b8 c a4 r8 a | a g fis g a2 g16 a g f e4 | 
		e8 e c e4 e g8 g a16 b a8 g | e d e16 d c8 d4 g d g |
		a2~ a16 bes a g f8 f g a g f | e8 d e16 d c8 d f f g f e16 d c4 |
		f4 g a16 bes a g f8 f g a g f | 
	}
	
	\alternative { 
		{ e8 d e16 d c8 d4 g d_\markup{ \italic { "Fine" } } \bar "||" g |  }
		{ e8 d e16( d) c8 d4 g d d |  }
	}

	\repeat volta 2 {

		e4 d e16 fis g4 g8 g a g f | e d e16 d c8 d f f g a16 g f e32 d c4 |
		f4. g8 a16 bes a g f8 f g a g f | 

	}

	\alternative {
		{ e8 d e16 d c8 d4 g d d | }
		{ e8 d e16 d c8 d4 g d d | }
	}

	e4 d e16 fis g8~ g g g a g f | e d e16 d c8 d f f g a16 g f e32 d c4 | 
	f4. g8 a16 bes a g f8 f g a g f e d e16 d c8 d4 g d g_\markup{ \italic { "D.C. al Fine" } } \bar "|."

}