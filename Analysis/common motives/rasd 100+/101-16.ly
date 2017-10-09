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

       << \new Staff \with { \remove "Time_signature_engraver" }   { e' 4
             d' 8
             e' 8
             c' 8

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
