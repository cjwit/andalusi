\version "2.18.2"

\header {
	title = "Afdī Ghazālān"
	subtitle = "Rasd #74"
	composer = "Page 312"
	meter = "Mizan al-Darj"
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
		\time 4/4
			\set Timing.beamExceptions = #'()
			\set Timing.baseMoment = #(ly:make-moment 1/4)
			\set Timing.beatStructure = #'(1 1 1 1)
		\tempo "Moderato" 4 = 100

		\repeat volta 2 {
			g2 g4 g |
			g e fis g |
			a1 |
			a4. b8 a4 g |
			e4. d8 c4 e |
			d1 |
			e4. f8 g4 f |
			e4. d8 c4 d |
			e1 |
			a4. b8 a4 g |
			e4. d8 c4 e |
			d1 |
			e8 f e f g4 f |
			e4. d8 c4 d |
			e1 |
			a4. b8 a4 g |
			e4. d8 c4 e |
			d1 |
		}

	}

	\layout {}
	\midi {}
}
