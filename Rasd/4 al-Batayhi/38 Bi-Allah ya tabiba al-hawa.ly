\version "2.18.2"

\header {
	title = "Bi-Allah Yā Tabība al-Hawa"
	subtitle = "Rasd #38"
	composer = "Page 267"
	meter = "Mizan al-Batayhi"
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
ds = \markup { \right-align { \italic { "D.S. al Fine" } } }
dsalcoda = \markup { \right-align { \italic { "D.S. al Coda" } } }
fine = \markup { \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
continue = \markup { \right-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
coda = \markup { \musicglyph #"scripts.coda" }
error = \markup { { "Wrong number of beats in score" } }
repeaterror = \markup { { "Score appears to be missing repeat" } }

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 8/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Moderato" 4 = 80

	\partial 2
	g2 |

	\repeat volta 5 {
		a2~_\repeaterror a8 b a4 \db r8 a4 a8 g4 e8 d |
		g2 a8 b c d \db c b16 a g8 g4 g a8 |
		g f e16 f g8 f e d d16 e \db f g f4. a4 a |
		a a8 a a4. f8( \db a) g4 f8 e16 f g8 f e |
		e4. e8 e4. d8~ \db d c4. f4 f8 g16 a |
		f4 g8 g g g g f16 g \db f e d4 c8 d e f g |
		f4 r8 f f g g f16 g \db f e d4 r8 e4 f8 e16 f |
		g4 a8 a a a a f \db a g4 f8 e16 f g8 f16 g e8 |
		e4 r8 e e4. d8~ \db d c4 r8 f4 f8 g16 a |
		f4 r8 f f4. g8~ \db g a4 g8 f e16 f g8 f |
		e d4. c8 b c d16 c \db d2 c'4 b8 c |
		a4 a8 a a4 g \db b2 c8 b c d |
		d4. d8 c b c d16 c \db d2 f,4 f8 g |
		f4. f8 f4~ f8 f \db g f4 e8 f d e c |
		d4 r8 e8 f g f16 g f e \db d2 c'4 b8 c |
		a4 a8 a b4 g \db b2 c8 b c d |
		d4. d8 c b c d16 c \db d2 f,4 f8 g |
		f4. f8 f4. g8~ \db g f16 g f e d8 e4 f8 e16 f |
		g4 g8 g g4 g \db a16 bes a g f4 f g16 a g8 |
		a4 c8 b a4 g8 f \db g16 a g f e4 e e |
		e e8 e e4 g \db f16 g f e d4 b b |
		b4 c2 g'4~ \db g8 g4 e8 f d e c |
	}

	\alternative {
		{
			d4 d8 d c b c d \db c d4. g2
		}
		{
			d4 d8 d c b c d \db c d4. g2
		}
	}

	\repeat volta 2 {
		b2. c4 \db b16 c b a g4 g2 |
		b2. d4 \db c2 d |
		c4 a2~ a16 bes a g \db f8 f4 g8 a g a4 |
		r4 a8 a a4 g \db f2 g4 a |
		f8 g f4. g8 f4 \db r8 f4 e8 f4 g |
		f8 g f e d e c4 \db r8 f4 e8 f4 g |
	}

	\alternative {
		{
			f8 g f e d c d16 e f g \db f2 g |
		}
		{
			f8 g f e d c d16 e f g \db f2 g |
		}
	}

	b2. c4 \db b16 c b a g4 g2 |
	b2. d4 \db c2 d |
	c4 a4. g8 c16 bes a g \db f8 f4 g8 a g a b |
	c4 a8 a a4 g \db f2 g4 a |
	f8 g f2. \db r8 f4 f8 f2 |
	a8 a a a a4. a8~ \db a g4 f8 e16 f g8 f e |
	d2 c8 b c d~ \db d4 r c' b8 c |
	a4 a8 a b4 g \db b2 c8 b c d |
	d4. d8 c b c d16 c \db d2 f,4 f8 g |
	f4. f8 f4. g8~ \db g f16 g f e d8 e4 f16 e f8 |
	g4 g8 g g4 g \db a16 bes a g f4 f g16 a g8 |
	a4 c8 bes a4 g8 f \db g16 a g f e4 e e |
	e4 e8 e e4 g \db f16 g f e d4 b b |
	b c2 g'4~ \db g8 g4 e8 f d e c |
	d4 d8 d c b c d \db d d4. r2 \bar "|."

}
