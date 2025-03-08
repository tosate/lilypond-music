% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key g \major \time 4/4 \numericTimeSignature  \autoBeamOff \partial 4*1 }

myVoice = \relative c' {
  g'4 | g fis8[ e] d4 g8[ a] \bar "|" b4 a g \breathe fis8[ g] \bar "|" \break
  a4 a e fis \bar "|" g e d \breathe d \bar "|" g g a b \bar "|" \break
  c b a \breathe a \bar "|" b c d g,8[ a] \bar "|" b4 a g
}

verseOne = \lyricmode {
  Komm, Schöp -- fer Geist, kehr__ bei uns ein, be --
  such das Herz der Kin -- der dein, er -- füll uns all mit
  dei -- ner Gnad, die dei -- ne Macht er -- schaf -- fen hat.
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
  title = "Komm, Schöpfer Geist"
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
