% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key c \major \time 4/4 \autoBeamOff \partial 8*2 }

myVoice = \relative c' {
  e8 f | g4 g8 e c4 d8 e f4 e8 d4. e8 f
  g4 g8 g a4 b8 c b4 a8 g4. a8 b c4 c8 c
  b4 g8 g a4 a8 g4. c,8 d e4 e8 e e4 d8 c
  d2. a'8 b c4 c8 c8 b4 g8 g a4 a8 g4. c,8 d
  e4 e8 e f e f4 g2. c,8 d e4 e8 e f e d4 c2.
}

verseOne = \lyricmode {
  Wenn das Brot das wir teil -- en, als Ro -- se blüht, und das
  Wort, das wir spre -- chen, als Lied er -- klingt, dann hat Gott un -- ter
  uns schon sein Haus ge -- baut, dann wohnt er schon in un -- se -- rer
  Welt. Ja, dann schau -- en wir heut' schon sein An -- ge -- sicht in der
  Lie -- be die al -- les um -- fängt, in der Lie -- be die al -- les um -- fängt.
}

verseTwo = \lyricmode {
  Wenn das Lied je -- des Ar -- men uns Chris -- tus zeigt, und die
  Not, die wir lin -- dern zur Freu -- de wird,
}

verseThree = \lyricmode {
  Wenn die Hand die wir hal -- ten uns sel -- ber hält, und das
  Kleid, das wir schen -- ken auch uns be -- deckt,
}

verseFour = \lyricmode {
  Wenn der Trost den wir ge -- ben uns wei -- ter trägt, und der
  Schmerz, den wir teil -- en zur Hoff -- nung wird,
}

verseFive = \lyricmode {
  Wenn das Leid das wir tra -- gen den Weg uns weist, und der
  Tod, den wir ster -- ben vom Le -- ben singt,
}

\version "2.14.2"
\paper {
  #(set-paper-size "a5")
  indent=0\mm
  %line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bootTitleMarkup=##f
  scoreTitleMarkup=##f
}
\header {
  title = "Wenn das Brot das wir teilen"
}
\score {
  \new Staff <<
    \clef "treble"
    \new Voice = "V1" { \keyTime \myVoice }
    \new Lyrics \lyricsto "V1" { \set stanza = #"1. " \verseOne }
    \new Lyrics \lyricsto "V1" { \set stanza = #"2. " \verseTwo }
    \new Lyrics \lyricsto "V1" { \set stanza = #"3. " \verseThree }
%    \new Lyrics \lyricsto "V1" { \set stanza = #"4. " \verseFour }
%    \new Lyrics \lyricsto "V1" { \set stanza = #"5. " \verseFive }
  >>
  \layout { }
  \midi {
    \context {
      \Score
        tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

