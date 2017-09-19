\version "2.18.2"

\header {
	title = "Kullu Shayʾ Lahu Intihāʾ Wahadu"
	subtitle = "Rasd #73"
	composer = "Page 311"
	meter = "Mizan al-Darj"
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
	\time 4/4
		\set Timing.beamExceptions = #'()
		\set Timing.baseMoment = #(ly:make-moment 1/4)
		\set Timing.beatStructure = #'(1 1 1 1)
	\tempo "Moderato" 4 = 96

	\repeat volta 2 {
		\partial 8
		e8 |
		e8 e e e d4. d8 |
		d4 d8 d c d e g |
		g a16( b) a8 g e4. d8 |
		c4 c8 d e4 d8-\fine |
	}

	\repeat volta 2 {
		g8 |
		g8 a16( b) a8 g e4. d8 |
		c4 c8 d e4 d8 |
	}

	g8 |
	g8 a16( b) a8 g e4. d8 |
	c4 c8 d e4 d8-\dc \bar "||"


}
