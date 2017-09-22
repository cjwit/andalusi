\version "2.18.2"

\header {
	title = "Li-Nabī al-Rasūl"
	subtitle = ""
	composer = "Page 103"
	meter = "Mizan Basit"
	copyright = "Transcription adapted from Yūnis al-Shāmī, Nūbāt al-Andalusiyya: Nūba al-Rasd (2009)"
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

\relative d' {
	\clef "treble"
	\key c \major
	\time 6/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1 1 1)
	\tempo "Moderato" 4 = 88

	\repeat volta 2 {
		a'2. a4 \db a4.( g8) |
		f4 a g2~ \db g4 r |
		g2. g4 \db g2 |
		f4 g a8( bes a g \db f e d4) |
		f4( e8 f g4) f \db e( d) |
		c c d( e \db f e) |
		f( e f) g \db d4. c8 |
		b4 c d8( e f e \db d4)-\fine r4 |
	}

	\repeat volta 2 {
		f4( e8 f g4) f \db e( d) |
		c c d8( e f e \db d4) r |
	}

	f4( e8 f g4) f \db e4( d) |
	c c d8( e f e \db d4)-\dc r \bar "||"


}
