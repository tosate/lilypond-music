% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key f \major \time 3/4 }

repeatedPart = \relative c' {
  f2 f4 f( e) f g( a) g f2 r4 \break
  a2 a4 a( g) f c'( bes) a a g r \break
}

notRepeatedPart = \relative c' {
  g'2 a4 bes2 g4  a2 bes4 c2 r4 \break
  d2 d4 c( bes) a bes( a) g f2.
}

firstTimeLyrics = \lyricmode {
  Gro -- ßer Gott, wir lo -- ben dich;
  Herr, wir prei -- sen dei -- ne Stär -- ke.
}

secondTimeLyrics = \lyricmode {
  Vor dir neigt die Er -- de sich
  und be -- wun -- dert dei -- ne Wer -- ke.
}

endSectionLyrics = \lyricmode {
  Wie du warst vor al -- ler Zeit,
  so bleibst du __ in E -- wig -- keit.
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
  title = "Großer Gott, wir loben dich"
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
