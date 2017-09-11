\version "2.18.2"

\header {

	title = "al-Bughiya"
	subtitle = "Rasd #1"
	composer = "Page 213"
	subsubtitle = "Note: Because this is unmetered, accidentials do not carry through the measure."

}

\relative d' {
	\clef "treble" 
	\key c \major
	\tempo "Ad libitum"
	\cadenzaOn
	\accidentalStyle forget
	d2
	\repeat volta 2 {
		e32\([ fis g fis g fis g fis g] \bar "" 
		fis[ g fis g fis g fis g a g a] a2\) \bar "" 
		a8[-"accel." b] a4 g-- e-- d-- \breathe \bar ""

	}

	\mark \markup { \musicglyph #"scripts.segno" }
	e32\([ fis g fis g fis g fis g fis] g4\) \breathe \bar "" 
	e4 e32\([ f e d c d c d c d] c2\) \bar ""
	g32\([ a b c b c d c d e d] e4\) \breathe \bar ""
	g4---"accel." a-- g-- e-- d-- c d e d e c d-"Fine" \fermata \bar "|." 

	e'32\([ f e f e f e f] g2\) e4 \bar ""
	e32\([ d c d c d c d c d] c2\) \bar ""
	g32\([ a b c b c d c d e d] e4\) \breathe \bar ""
	g,4-- a-- \breathe \bar ""
	a8[ b] a4 g e d \breathe \bar "" \break \bar ""
	e32\([ fis g fis g fis g fis g fis] \bar "" 
	g[ fis g fis g fis g a g a~] a2\) \breathe \bar ""
	a8[ b] a4 g e d \bar "||"
	\mark \markup { \musicglyph #"scripts.segno" }
}