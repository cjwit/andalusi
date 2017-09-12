\version "2.18.2"

\header {
	title = "Al-shawqu ʿallumnī al-sahar"
	subtitle = "Rasd #24"
	composer = "Page 248"
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

	r8 g fis( g) a4 \db r8 a4 g8 a b a g |

	\repeat volta 5 {

		% written out repeat

		e4^\segno g8 g a4 g \db e( d) e c8 e |
		d4 r8 g fis( g) a4 \db r8 a4 g8 a b a g |
		e4 g8 g a4 g \db e( d) e c8 e |
		d4 r8 e e4 e~ \db e8 e4 d8 e fis g a |

		% end written out repeat

		g4 e16 f e d c4 d~ \db d8 c4 d8 e2~ |
		e4 r8 g fis4 g \db a g b a |
		g e16 f e d c4 e \db d8 e c e d2~ |

	}

	\alternative {
		{ d4-\fine \bar "||" r8 g fis g a4 \db r8 a4 g8 a b a g | }
		{ d4 r4 d d~ \db d4. c8 d e d c | }
	}

	% written out repeat

	a4 g c8 d e4 \db d8 e16 d c8 e d4 e16 f e d |
	c4 c8 d e4 d~ \db d8 e16 d c8 e d2~ |

	d4 r d d \db d4. c8 d e d c |

	a4 g c8 d e4 \db d8 e16 d c8 e d4 e16 f e d |
	c4 c8 d e4 d~ \db d8 e16 d c8 e d2~ |

	d4 r d d \db d4. c8 d e d c |

	% end written out repeat

	a4 g c8 d e4 \db d8 e16 d c8 e d2~ |
	d4 r8 g fis g a4 \db r8 a4 g8 a b a g-\ds \bar "||"
}
