keyTime = { \key d \major \time 4/4 \numericTimeSignature }

myVoice = \relative c'' {
    \tempo 4 = 170
    r1 r1 r1 r4 d4 d4 e4 fis4 fis8 fis8 r4 r8 fis8 fis8 fis8 fis8 fis8 fis8 fis8 fis8 a8 fis4 e8 e4 r8 r4 r4 e4 e4 fis4 g4 r8 g8 g8 fis4 d8( \break
    d8) r8 a4 d4 e4 fis4 fis4 g8 fis4 e8( e8) r8 d4 d4 e4 fis4 fis8 fis8 r4 r8 fis8 fis8 fis8 fis8 fis8 fis8 fis8 fis8 a8 fis4 e8 e4 r8 r4 r4 e4 e4 fis4 g4 g4 g4 fis8 d8( \break
    d8) r8 b4 d4 e4 fis4 fis4 g8 fis4 e8( e8) r8 r4 r8 d8 d8 cis8 b8 b8 b8 b8 d8 d8 d8 d8 fis8 fis8 fis8 fis8 fis8 e8 d8 cis8 r1 \bar "|."
}

\version "2.24.4"
\paper {
  #(set-paper-size "a5" 'landscape)
}

\header {
  title = "Wackelkontakt"
  subtitle = "Oimara"
  subsubtitle = "(für Bb Instrumente)"
}
\score {
  \new Staff <<
    \clef "treble"
    \new Voice = "P1" { \keyTime \myVoice }
  >>
  \layout { }
  \midi {
    \Score
      tempoWholesPerMinute = #(ly:make-moment 170 4)
  }
}