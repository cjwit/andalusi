\version "2.18.2"

\header {

	title = "al-Bughiya"
	subtitle = "Ramal al-Maya #1"
	composer = "Page 83"
	subsubtitle = "Note: Because this is unmetered, accidentials do not carry through the measure."
	copyright = "Transcription adapted from Yūnis al-Shāmī, Nūbāt al-Andalusiyya al-Maghribiyya: Nūba Ramal al-Maya (1984)"
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
		\repeat volta 2 {
			a'2. g2. f2. \tuplet 6/4 { e16[( f g f g f)] } \bar ""
			g2. \tuplet 6/4 { f16[( g  g a g)] } a2. \bar ""
			g2 f4 e d c2. \bar ""
			d8[ c] \tuplet 6/4 { d16[( c d c d e)] } f2. \bar ""
			\tuplet 6/4 { e16[( f g f g f)] } g2. \bar ""
			\tuplet 6/4 { f16[( g a g a g)] } a2. \bar ""
			g2  f4 e d \bar ""
			\tuplet 7/4 { f16[( e f e f e f)] } g2. \bar ""
			f32[ g a bes a g f e] \bar ""
			d2 \tuplet 5/4 { c16[( b c d c)] } d2
		}

	}

	\layout {}
	\midi {}
}
