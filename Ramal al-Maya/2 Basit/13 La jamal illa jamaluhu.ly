\version "2.18.2"

\header {
	title = "Lā Jamāl illā Jamāluhu"
	subtitle = "Ramal al-Maya #13"
	composer = "Page 101"
	meter = "Mizan Basit"
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
		\time #'(2 2 2) 6/4
		\tempo "Moderato" 4 = 80

		\repeat volta 2 {
			a'2. a4 \db a8( bes a g |
			f4 g a8 bes a g \db f4) c |
			f2. g4 \db a( b? |
			c b a g~ \db g) r |
			f4( e8 f) g4 f8( e) \db d2( |
			b4) c d( e \db f) r |
			c'4( b c) d \db c( a |
			b) g a2~ \db a4-\fine r |
		}

		\repeat volta 2 {
			b,4 c d b \db c d |
			g8( f e) d c f f e \db f( e f) g |
			f( d e) c d( e16 f g4 \db d) r |
		}

		b4 c d b \db c d |
		g8( f e) d c4 f8 e \db f( e f g) |
		f( d e c) d( e16 f g4 \db d-\dc) r \bar "||"

	}

	\layout {}
	\midi {}
}
