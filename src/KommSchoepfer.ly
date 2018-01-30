% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key g \major \autoBeamOff }

myVoice = \relative c' {
  \cadenzaOn g'4 g fis8[ e] \bar "|" d4 g8[ a] b4 a \bar "|" g \breathe fis8[ g] \bar "" \break
  a4 a \bar "|" e fis g e \bar "|" d2 r4 d g g \bar "|" a b \bar "" \break
  c b \bar "|" a \breathe a b c \bar "|" d g,8[ a] b4 a \bar "|" g2.
}

verseOne = \lyricmode {
  Komm, Schöp -- fer Geist, kehr bei uns ein, be --
  such das Herz der Kin -- der dein: die dei -- ne Macht er --
  schaf -- fen hat, er -- fül -- le nun mit dei -- ner Gnad.
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
  \layout {
  	\context {
  		\Staff \remove Time_signature_engraver
  	}
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
