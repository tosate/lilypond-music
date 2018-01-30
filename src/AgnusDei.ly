% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key d \major \time 4/4 }

myVoice = \relative c' {
  d2 e4 fis e2 d d4 e fis fis \break
  a2 g4 fis e2 d4 e fis2. \breathe d4 \break
  d2 e4 fis e2 d d fis4 g a2 g \break
  b4 a g a fis2 e4 d e2 d4 e \break
  fis2. \breathe d4 d2 e4 fis e2 d d' cis4 a \break
  b2 a a4 b d cis b2 a4 fis \break
  a2 g4 fis e2. r4 d d e fis e2 d
}

myLyrics = \lyricmode {
  O du Lamm Got -- tes, wel -- ches du hin --
  weg -- nimmst die Sün -- de der Welt, er --
  bar -- me dich un -- ser! O du Lamm Go  -- tes,
  wel -- ches du hin -- weg -- nimmst die Sün -- de der
  Welt, er -- bar -- me dich un -- ser! O du Lamm
  Got -- tes, wel -- ches du hin -- weg -- nimmst die
  Sün -- de der Welt, schenk uns dei -- nen Frie -- den!
}

\version "2.14.2"
\paper {
  % #(set-paper-size "a5")
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bootTitleMarkup=##f
  scoreTitleMarkup=##f
}
\header {
  title = "Agnus Dei"
}
\score {
  \new Staff <<
    \clef "treble"
    \new Voice = "P1" { \keyTime \myVoice }
    \new Lyrics \lyricsto "P1" { \myLyrics }
  >>
  \layout { }
  \midi {
    \context {
      \Score
        tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
