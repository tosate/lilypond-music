% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key f \major \time 4/4 \numericTimeSignature \autoBeamOff }

mainVoice = \relative c' {
  e4 e8 f g ~ g e d c a c d e2
  f4 g8 f e4 f8 e d2 g4 r4
  e8 ~ e e f g ~ g e d c a c d e2
  f4 g8 f e4 f8 e d2 c
  c' b a g a g g4( a) b( g)
  c2 b a g
}

firstVoice = \relative c' {
  a'2 g g e
}

secondVoice  = \relative c' {
  f4 g8[ f] e4 f8[ e] d2 c
}

mainLyrics = \lyricmode {
  Ge -- het nicht auf in den Sor -- gen die -- ser Welt.
  Su -- chet zu -- erst Got -- tes Herr -- schaft.
  Und al -- les and -- re wird euch da -- zu ge -- schenkt.
  Hal -- le -- lu -- ja, ha -- le -- lu -- ja.
  Hal -- le -- lu -- ja, hal -- le -- lu -- ja.
  Hal -- le -- lu -- ja,
}

firstVoiceLyrics = \lyricmode {
  hal -- le -- lu -- ja.
}

secondVoiceLyrics = \lyricmode {
  hal -- le -- lu -- ja, hal -- le -- lu -- ja.
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
  title = "Gehet nicht auf in den Sorgen dieser Welt"
}
\score {
  \new Staff <<
    \clef "treble"
    \new Voice = "MV" {
      \keyTime \mainVoice
      <<
        \new Voice = "V1" { \voiceOne \firstVoice }
        \new Voice = "V2" { \voiceTwo \secondVoice }
      >>
    }
    \new Lyrics \lyricsto "MV" { \mainLyrics }
    \new Lyrics \lyricsto "V1" { \firstVoiceLyrics }
    \new Lyrics \lyricsto "V2" { \secondVoiceLyrics }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
