\version "2.18.2"

\header {
	title = "Hubbu al-habīb"
	subtitle = "Rasd #23"
	composer = "Page 247"
	meter = "Mizan al-Qaʾim wa Nusf"
}

% VARIABLES

db = \bar "!"
dc = \markup { \right-align { \italic { "D.C. al Fine" } } }
ds = \markup { \right-align { \italic { "D.S. al Fine" } } }
fine = \markup { \italic { "Fine" } }
incomplete = \markup { \right-align "Incomplete: missing pages in scan. Following number is likely also missing" }
continue = \markup { \right-align "Continue..." }
segno = \markup { \musicglyph #"scripts.segno" }
coda = \markup { \musicglyph #"scripts.coda" }
error = \markup { { "Wrong number of beats in score" } }

% TRANSCRIPTION

\relative d' {
	\clef "treble"
	\key c \major
	\time 8/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
	\tempo "Moderato" 4 = 96

	\partial 1..

	g2 a4~ \db a4. g8 a b a g |

	\repeat volta 5 {

		e4^\segno d8 g a4 g \db e d e c8 e |
		d4 g2 a4~ \db a4. g8 a b a g |
		e4 d8 g a4 g \db e4 d e c8 e |
		d4 r8 g g4 g~ \db g8 g4~ g8 g4 c8 b |
		d c b a g4 g~ \db g8 a16 g fis8 g a2~ |
		a4 a2 a4~ \db a4. g8 a b a g |
		e4 d8 g a4 g \db e d e8 fis g a |
		g16 fis e d c8 e e4 e~ \db e8 d4 d8 c4 d |
		g8 f e d c4 e \db d8 e16 d c8 e d2~ |

	}

	\alternative {
		{ d4-\fine \bar "||" g2 a4~ \db a4. g8 a b a g | }
		{ d4 r8 e e4 e~ \db e8 e4 d8 c4 d | }
	}

	g8 f e d c4 e( \db d8) e16 d c8 e d2 |

	% written out repeat

	d4 r8 e e4 e~ \db e8 e4 d8 c4 d |
	g8 f e d c4 e( \db d8) e16 d c8 e d2~ |

	% end written out repeat

	d4 r8 e e4 e~ \db e8 e4 d8 c4 d |
	g8 f e d c4 e \db d8 e16 d c8 e d2~ |
	d4 g2 a4~ \db a4. g8 a b a g-\ds \bar "||"

}
