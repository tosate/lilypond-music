% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key g \major \time 4/4 \numericTimeSignature }

myVoice = \relative c' {
  g'4 g4. g8 g[ g] a4 a b b g g4. g8 g[ g] e4 e d2
  g4 g4. g8 a[ b] c4 b a g d g g fis g1
}

verseOne = \lyricmode {
 Dan -- ke, für die -- sen gu -- ten Mor -- gen, dan -- ke, für je -- den neu -- en Tag;
 dan -- ke, daß ich all mei -- ne Sor -- gen auf dich wer -- fen mag.
}

\version "2.14.2"
\paper {
  #(set-paper-size "a5")
  indent=0\mm
  %line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bootTitleMarkup=##f
  scoreTitleMarkup=##f
}
\header {
  title = "Danke, für diesen guten Morgen"
}
\score {
  \new Staff <<
    \clef "treble"
    \new Voice = "V1" { \keyTime \myVoice }
    \new Lyrics \lyricsto "V1" { \verseOne }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
