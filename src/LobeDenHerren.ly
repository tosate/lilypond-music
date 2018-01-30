% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key f \major \time 9/4 \partial 4*3 }

repeatedPart = \relative c' {
  f4 f c' | a4. g8 f4 e d c \bar "" \break
  d e f g2. f2. \breathe
}

notRepeatedPart = \relative c' {
  c'4 c c | d2. \breathe a4 bes c \bar "" \break
  c4. bes8 a4 g2. \breathe c,4 d e f g a g2. f2.
}

firstTimeLyrics = \lyricmode {
  Lo -- be den Her -- ren, den mäch -- ti -- gen
  Kö -- nig der Eh -- ren;
}

secondTimeLyrics = \lyricmode {
  lob ihn, o See -- le, ver -- eint mit den
  himm -- li -- schen Chö -- ren.
}

endSectionLyrics = \lyricmode {
  Kom -- met zu -- hauf, Psal -- ter und
  Har -- fe, wacht auf, las -- set den Lob -- ge -- sang hö -- ren.
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
  title = "Lobe den Herren"
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
        tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}

