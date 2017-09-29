\version "2.18.2"

\header {

	title = "al-Bughiya"
	subtitle = "Rasd #1"
	composer = "Page 213"
	subsubtitle = "Note: Because this is unmetered, accidentials do not carry through the measure."
	copyright = "Transcription adapted from Yūnis al-Shāmī, Nūbāt al-Andalusiyya: Nūba al-Rasd (2009)"
	tagline = ""
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
ds = \markup { \right-align { \italic { "D.S. al Fine" } } }
dsalcoda = \markup { \right-align { \italic { "D.S. al Coda" } } }
dcalcoda = \markup { \right-align { \italic { "D.C. al Coda" } } }
fine = \markup { \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
continue = \markup { \center-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
coda = \markup { \musicglyph #"scripts.coda" }
error = \markup { { "Wrong number of beats in score" } }
repeaterror = \markup { { "Score appears to be missing repeat" } }
accidentalerror = \markup { { "Unclear accidentals" } }

\score {
	\relative d' {
		\clef "treble"
		\key c \major
		\tempo "Ad libitum"
		\cadenzaOn
		\accidentalStyle forget
		d2
		\repeat unfold 2 {
			e32\([ fis g fis g fis g fis g] \bar ""
			fis[ g fis g fis g fis g a g a] a2\) \bar ""
			a8[-"accel." b] a4 g-- e-- d-- \breathe \bar ""

		}

		e32^\segno\([ fis g fis g fis g fis g fis] g4\) \breathe \bar ""
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
		a8[ b] a4 g e d^\segno \bar "||"
	}

	\layout {}
	\midi {}
}
