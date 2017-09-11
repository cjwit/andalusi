\version "2.18.2"

\header {
	title = "Tushiya"
	subtitle = "Rasd #3"
	composer = "Page 217"
}

\relative d' {
	\clef "treble" 
	\key c \major
	\time 2/4
	\tempo "Adagio" 4 = 58

	\repeat volta 2 {

		g8. g16 g8 g | fis g a4 | r8 g16 g fis8 g | a g a4 | a a8 b | a4 g |

		\repeat unfold 2 {
			e16 f e d c4 | c8 d e fis | g a16 b a8 g |
			e16 f e d c4 | c8 d e c | d4 r4 |
		}

		e16 f e d c4 | c8 d e fis | g a16 b a8 g | e16 f e d c4 | c8 d e c | 

	}
	
	\alternative { 
		{ d4 r4 }
		{ d4 r8 b'16 c }
	}

	\repeat volta 2 {
		
		d4 d8 e | d4 c | a16 b a b g4 | c8 d e g e d e c | d4 r4 |
		d4 d8 e | d4 c | a16 b a b g4 | e16 f e d c8 d | e16 f e d c8 e |
	
	}

	d4 r4 \bar "|."

}