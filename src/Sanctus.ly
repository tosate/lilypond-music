% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key bes \major \time 4/4 \numericTimeSignature \autoBeamOff }

repeatedPart = \relative c' {
  d es f8[ d] bes4 g' a8[ bes] f[ es] d4 \break
  f g8[ a] bes4 c8[ d] bes4 a bes r
}

notRepeatedPart = \relative c' {
  bes' bes bes f8[ g] \break
  as4 as as g c c c g8[ a] \break
  bes4 bes bes a bes a g f g f8[ es] d2 \break
  f4 g8[ a] bes4 c8[ d] bes4 a bes2
}

firstTimeLyrics = \lyricmode {
  Hei -- lig, hei -- lig, drei -- mal hei -- lig
  bist du, Herr, Gott Sa -- ba -- oth.
}

secondTimeLyrics = \lyricmode {
  Erd und Him -- mel dich lob -- prei -- sen
  in der Hö -- he, gro -- ßer Gott.
}

endSectionLyrics = \lyricmode {
  Hei -- lig, der in
  dei -- nem Na -- men zu uns kommt: Ho --
  san -- na! A -- men. Ihm sei Lob und Herr -- lich -- keit,
  Preis und Dank in E -- wig -- keit!
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
  title = "Sanctus"
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
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}

