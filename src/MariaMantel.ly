% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key g \major \time 4/4 \numericTimeSignature  \autoBeamOff \partial 4*1 }

myVoice = \relative c' {
  g' | g4. g8 e[ fis] g4 a8[ b] a4 g r8 \bar "" \break
  g a4 b g e fis8[ g] a4 g r8 \bar "" \break
  g a4 b a b c b a r8 \bar "" \break
  b c4 a b g fis8[ g] a4 g r8 \bar "" \break
  g a4 b a b c2 b4 \breathe \bar "" \break
  g a c b8[ a] g4 a2 g4
}

verseOne = \lyricmode {
  Ma -- ri -- a, breit den Man -- tel aus,
  mach Schirm und Schild für uns dar -- aus;
  laß uns dar -- un -- ter si -- cher stehn,
  bis al -- le Stürm vor -- ü -- ber -- gehn.
  Pa -- tro -- nin vol -- ler Gü -- te,
  uns al -- le -- zeit be -- hü -- te.
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
  title = "Maria, breit den Mantel aus"
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
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
