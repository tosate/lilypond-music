% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key es \major \time 3/4 }

repeatedPart = \relative c' {
  bes'4 g es es( d) es f( bes) as as( g) r \break
  g f es c( as') f es2( d4) es2 r4 \break
}

notRepeatedPart = \relative c' {
  bes'4 bes bes c2 c4 d2 d4 es2. \break
  bes4 as g c2 as4 f( bes) as as( g) r \break
  g f es c( as') f es2( d4) es2.
}

firstTimeLyrics = \lyricmode {
  Fest soll mein Tauf -- bund im -- mer stehn,
  ich will die Kir -- che hö -- ren.
}

secondTimeLyrics = \lyricmode {
  Sie soll mich all -- zeit gläu -- big sehn
  und folg -- sam ih -- ren Leh -- ren.
}

endSectionLyrics = \lyricmode {
  Dank sei dem Herrn, der mich aus Gnad
  in sei -- ne Kirch be -- ru -- fen hat;
  nie will ich von ihr wei -- chen!
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
