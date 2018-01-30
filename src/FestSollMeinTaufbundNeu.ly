% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key d \major \time 3/4 }

repeatedPart = \relative c' {
  a'4 fis d d( cis) d e( a) g \break
  g( fis) r fis e d b( g') e d2( cis4) \break
  d2 r4
}

notRepeatedPart = \relative c' {
  a'4 a a b2 b4 cis2 cis4 \break
  d2. a4 g fis b2 g4 e( a) g g( fis) r \break
  fis e d b( g') e d2( cis4) d2.
}

firstTimeLyrics = \lyricmode {
  Fest soll mein Tauf -- bund im -- mer stehn,
  zum Herrn will ich __ ge -- hö -- ren.
}

secondTimeLyrics = \lyricmode {
  Er ruft mich, sei -- nen Weg __ zu gehn,
  und will sein Wort mich leh -- ren.
}

endSectionLyrics = \lyricmode {
  Dank sei dem Herrn, der mich aus Gnad
  in sei -- ne Kirch be -- ru -- fen hat;
  ihr will ich gläu -- big fol -- gen!
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
  title = "Fest soll mein Taufbund immer stehen"
}
\score {
  \new Staff <<
    \clef "treble"
    \new Voice = "P1" {
      \keyTime
      \repeat volta 2 { \repeatedPart }
      \notRepeatedPart
    }
    \new Lyrics \lyricsto "P1" {
      <<
        \new Lyrics {
          \set associatedVoice = "P1"
          \firstTimeLyrics
        }
        \new Lyrics {
          \set associatedVoice = "P1"
          \secondTimeLyrics
        }
      >>
      \endSectionLyrics
    }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 110 4)
    }
  }
}
