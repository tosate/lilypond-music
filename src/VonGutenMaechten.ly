% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key d \major \time 4/4 \numericTimeSignature }

myVoiceOne = \relative c' {
  d2 fis4 g a2 fis g4 fis e d e2 e d fis4 g \break
  a2 fis b4. a8 fis4 d e1 d2 fis4 g a2 d cis4 cis b a \break
  b2 a a b4 cis d2 g, fis4 d e e d1
}

myVoiceTwo = \relative c' {
  a2 d cis d e4 d b b d b cis2 a d
  cis d d4. cis8 d4 b cis1 a2 d e fis fis4 fis d2
  e4 d cis2 d d4 g fis2 d d4 b << b d >> cis a1
}

myBass = \relative c {
  fis2 d a d e4 fis g gis a2 a, fis' d
  fis b, g'4. fis8 d4 gis a1 fis2 d4 d fis2 b, fis'4 cis d fis
  gis2 a fis g4 e d2 g a4 as g a d,1
}

myLyrics = \lyricmode {
  Von gu -- ten Mäch -- ten wun -- der -- bar ge -- bor -- gen, er -- war -- ten
  wir ge -- trost, was kom -- men mag: Gott ist mit uns am A -- bend und am
  Mor -- gen und ganz ge -- wiss an je -- dem neu -- en Tag.
}


\version "2.14.2"
\paper {
  #(set-paper-size "a5")
  indent=0\mm
  % line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bootTitleMarkup=##f
  scoreTitleMarkup=##f
}
\header {
  title = "Von guten Mächten"
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \clef "treble"
      \new Voice = "V1" { \voiceOne \keyTime \myVoiceOne }
      \new Voice = "V2" { \voiceTwo \myVoiceTwo }
      \new Lyrics \lyricsto "V1" { \myLyrics }
    >>
    \new Staff <<
      \clef "bass"
      \new Voice = "Bass" { \keyTime \myBass }
    >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
