\version "2.18.2"

\header {
	title = "Yā Qalbī Bushra"
	subtitle = "Rasd #44"
	composer = "Page 278"
	meter = "Mizan al-Batayhi"
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

% TRANSCRIPTION

\score {

	\relative d' {
		\clef "treble"
		\key c \major
		\time 8/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
		\tempo "Allegretto" 4 = 100

		\repeat volta 2 {
			r4 r8 c'8 c4 c~ \db c8 c4 b8 a4 g |
			c b a g \db c b8 c d4 c8 b |
			a4 a8 a a4 g \db a16 bes a g f4 f g |
			b4 b8 b b4 c \db b16 c b a g4 c c |
			bes a g f8 e \db f2 c'4 c |
			bes a g f8 e \db g2 c4 c |
			bes a g f \db r8 f4 g8 a4 bes8 a |
			g f f f4 g8 f e16 d \db c8 f4 g8 a4 bes8 a |
			g f f f4 g8 f e16 d \db c8 f4 g8 a4 bes8 a |
			g4 f8 f f4 g \db a2 g4 f8 e |
			d4 r8 a'8 a4 a~ \db a8 a4 g8 a c b16 c a b |
			g8 f e f( g) f e4( \db d8) c b c d2 |
			g4 f8 e d4 e \db f16 g f e d4 e f |
			g8 a a a4 a8 a4~ \db a8 f( e) f g2 |
			g4 f8( e) d4 e \db f16 g f e d4 e f |
			g8 a a a4 a8 a4~ \db a8 f( e) f g2 |
			f4 e f a \db g8 f16 e d4 g f |
			e d d d8 e \db c2 g'4 f |
			e d d g~ \db g8 g4 f8 e4 d |
			c8 e e e4 f8 g4~ \db g8 f( e) d c b c4
		}
	}

	\layout {}
	\midi {}
}
