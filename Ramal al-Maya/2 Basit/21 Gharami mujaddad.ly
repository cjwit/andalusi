\version "2.18.2"

\header {
	title = "Gharāmī Mujaddad"
	subtitle = "Ramal al-Maya #21"
	composer = "Page 109"
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
		\time 3/4
		\tempo "Vivace" 8 = 126

		s8 d'8 d4. c8(

		\repeat volta 2 {
			b8) d c( b a g) |
			a16( bes a g f8) f f4( |
			g8) a4 g8 f16( g f e) |
			d4 r8 b'16( c) d4( |
			d8) c( b) d c( b |
			a g) a16( bes a g f8) f |
			f4( g8) a4 g8 |
			f16( g f e) d8( c) d( e |
			f) g g g g4 |
			d g8 g g4 |
		}

		\alternative {
			{
				d8.( c16) b8 c d4~ |
				d8 d' \noBeam d4. c8 |
			}
			{
				d8.( c16) b8 c d4 \bar "|."
			}
		}

	}

	\layout {}
	\midi {}
}
