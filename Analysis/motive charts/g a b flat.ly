\version "2.18"
\include "lilypond-book-preamble.ly"

color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})

\header { }
\score  {

       << \new Staff \with { \remove "Time_signature_engraver" }
	   {
		   \hide Staff.Stem
		   \time 6/4
		   \accidentalStyle forget
		   g'4
		   a'
		   bes'
		   \bar "!"
		   bes'
		   a'
		   g'
		   \bar ""

              }


        >>

  }

\paper { }
\layout {
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t
  }
 }
