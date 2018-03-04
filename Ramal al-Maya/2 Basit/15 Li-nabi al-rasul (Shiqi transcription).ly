\version "2.18.2"

\header {
	title = "Li-Nabī al-Rasūl"
	subtitle = "With lesson transcription, as played by Ahmed Shiqi"
	composer = "Shami page 103"
	arranger = "Davila Page 198"
	meter = "Mizan Basit"
	copyright = "Transcription © Christopher Witulski, 2017"
	tagline = ""
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
accidentalerror = \markup { { "Unclear accidentals" } }


% TRANSCRIPTION


intro = {
	\cadenzaOn
		a8^"Freely" a'4. g4 f8[ e f] e[ f g] a4 g8[ g] f[ e d] e4 c d \bar "||"
	\cadenzaOff
}

introRest = {
	\cadenzaOn
		s1 s1 s1 s8 \bar "||"
	\cadenzaOff
}

published = {
	\new Staff \with {
		instrumentName = #"Published"
		shortInstrumentName = #"Pub."
	}
	\relative d' {
		\clef "treble"
		\key d \minor
		\time 6/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1)

		\introRest

		a'2. a4 \db a4.( g8 |
		f4) a g2~ \db g4 r |
		g2. g4 \db g2 |
		f4 g a8( bes a g \db f e d4) |
		f4( e8 f g4) f \db e( d |
		c) c d( e \db f) e |
		f( e f) g \db d4. c8 |
		b4 c d8( e f e \db d4) r4 |

		% repeated over solo

		a'2. a4 \db a4.( g8 |
		f4) a g2~ \db g4 r |
		g2. g4 \db g2 |
		f4 g a8( bes a g \db f e d4) |
		f4( e8 f g4) f \db e( d |
		c) c d( e \db f) e |
		f( e f) g \db d4. c8 |
		b4 c d8( e f e \db d4) r4 |


		% bridge

		f4( e8 f g4) f \db e( d) |
		c c d8( e f e \db d4) r |
		f4( e8 f g4) f \db e( d) |
		c c d8( e f e \db d4) r |
		f4( e8 f g4) f \db e4( d) |
		c c d8( e f e \db d4) r \bar "||"

	}
	\addlyrics {
		Li -- na -- | bī ra -- | sūl |
		hā -- ja | shawq al -- ʿab -- | di |
		Li -- na -- | bī ra -- | sū -- l |
		hā -- ja | sha -- wq al -- ʿab -- | di |
	}


}

vocal = {
	\new Staff \with {
		instrumentName = #"Voice"
		shortInstrumentName = #"Vox."
	}
	\relative d' {
		\clef "treble"
		\key d \minor
		\time 6/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1)

			\introRest

			a'2.^\segno a4 \db a8( bes a g |
			f4) r8 g8 g2~ \db g4 r4 |
			r4 g2 g4 \db g2 |
			f4 g a8( bes a g \db f4) r4 |
			r8 f( e f g4) f \db e( d |
			c) r8 c8 c8( d e4 \db f) e |
			r8 f( e4 f) g \db d4. c8 |
			b4 c d8( e f e \db d4)^\fine r4 \bar "||"

		}
		\addlyrics {
			Li -- na -- | bī ra -- | sūl |
			hā -- ja | shawq al -- ʿab -- | di |
			Li -- na -- | bī ra -- | sū -- l |
			hā -- ja | sha -- wq al -- ʿab -- | di |
		}
}

instrumental = {
	\new Staff \with {
		instrumentName = #"ʿŪd"
		shortInstrumentName = #"ʿŪd"
	}
	\relative d' {
		\clef "treble"
		\key d \minor
		\time 6/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1 1 1)

			\intro

			a'4 a,8 a'16 a a8 a, a' a, \db a'8 bes16 bes a8 g |
			f f a bes g g, g' g, \db g'4 g,8 a'16 a |
			g8 g, g' g, g' a g a \db g8 g g, g'16 g |
			f8 f g g,-> a'16 a bes bes a a g8 \db f4 g,8 d' |
			f8. g16 e8 f g a16 g f8 g \db e8 e16 e d8 d-> |
			c a-> c c-> c8 d e e \db f f e e16 e |
			f8 g e e16 e f8 f-> g g-> \db d4. c8 |
			b b16 b c8 c d e-> f e-> \db d4 d, |

			% solo

			a''8 a, a' a, a' a, a' a, \db a' bes16 a bes a g g |
			f8 f a bes g e c d \db b a g g'16 g |
			g8 g, g' g, g'16 g a a g g f8->~ \db f8 g g, a'16 g |
			f8 f g g, \tuplet 3/2 { a'8 bes c } \tuplet 3/2 { bes8 a g } \db f4 g,8 d' |
			f4 e8 f g a16 g f8 g \db e8. f16 d8 d-> |
			c a-> c c c d-> e e-> \db f f-> e e-> |
			f g-> e e16-> e f8 f-> g g-> \db g d,~ d c' |
			b b16-> b c8 c-> d e f e \db d d,~ d d' \bar "||"

			% bridge

			f8 g e f g g f f \db e f16 e d8 e16 d |
			c8 c f e d d, d' d, \db d' d, d' d, |
			f'' e f d e c d b \db c a b g |
			f g e f g16 g a a g g f f \db e d c8 d8. d16 |
			f8 f-> e f-> g a16 g f8 g \db e f16 e d8 d-> |
			c a-> f' e d d, d' d, \db d' d, d' d^\ds \bar "||"

		}
	}

\layout {
	\context {
		\Staff \RemoveEmptyStaves
%		\override VerticalAxisGroup.remove-first = ##t
	}
}
<<
	\published
	\vocal
	\instrumental
>>
