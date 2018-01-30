% author: Thomas Salm
% http://www.devtom.de

keyTime = { \key d \major \time 6/8 \partial 8*1 }

myVoice = \relative c' {
  a8 | d4 d8 d4 d8 e4 e8 fis4 e8 e4. d4. \break
  r4 r r8 d g4 g8 g4 g8 g4 fis8 e4 d8 e2. \break
  r4 r r8 a, d4 d8 d4 d8 e4 e8 fis4 e8 e4. d4. \break
  r4 r r8 fis g4 g8 g4 g8 fis4 fis8 e4 e8 d2. \break
  r4 r r8 fis8 a4 a8 a4 a8 a4 g8 fis4 e8 d4. d4. \break
  r4 fis8 g4 a8 b4 b8 b4. r4 a8 g4 fis8 e2. \break
  r4 r r8 fis fis4 a 8 a4 fis8 a4 a8 fis 4 e8 d4. d4. \break
  r4 r r8 d d4 d8 e4 fis8 e4 d8 b4 d8 d2.( d2.)
}

verseOne = \lyricmode {
  Von gu -- ten Mäch -- ten treu und still um -- ge -- ben,
  be -- hü -- tet und ge -- trös -- tet wun -- der -- bar,
  so will ich die -- se Ta -- ge mit euch le -- ben,
  und mit euch ge -- hen in ein neu -- es Jahr;
  Von gu -- ten Mäch -- ten wun -- der -- bar ge -- bor -- gen,
  er -- war -- ten wir ge -- trost, was kom -- men mag.
  Gott ist mit uns am A -- bend und am Mor -- gen,
  und ganz ge -- wiss an je -- dem neu -- en Tag. __
}

verseTwo = \lyricmode {
  Noch will das Al -- te un -- sre Her -- zen quä -- len,
  noch drückt uns bö -- ser Ta -- ge schwe -- re Last,
  Ach Herr, gib uns -- ern auf -- ge -- schreck -- ten See -- len
  das Heil, für das Du uns be -- rei -- tet hast.
}

verseThree = \lyricmode {
  Und reichst Du uns den schwe -- ren Kelch, den bit -- tern,
  des Leids, ge -- füllt bis an den höchs -- ten Rand,
  so neh -- men wir ihn dank -- bar oh -- ne Zit -- tern
  aus Dei -- ner gu -- ten und ge -- lieb -- ten Hand.
}

verseFour = \lyricmode {
  Doch willst Du uns noch ein -- mal Freu -- de schen -- ken,
  an die -- ser Welt und ih -- rer Son -- ne Glanz,
  dann woll'n wir des Ver -- gan -- ge -- nen ge -- den -- ken,
  und dann ge -- hört Dir un -- ser Le -- ben ganz.
}

verseFive = \lyricmode {
  Lass warm und hell die Ker -- zen heu -- te flam -- men,
  die Du in un -- sre Dun -- kel -- heit ge -- bracht,
  führ, wenn es sein kann, wie -- der uns zu -- sam -- men!
  Wir wis -- sen es, Dein Licht scheint in der Nacht.
}

verseSix = \lyricmode {
  Wenn sich die Stil -- le nun tief um uns brei -- tet,
  so lass uns hö -- ren je -- nen vol -- len Klang
  der Welt, die un -- sicht -- bar sich um uns wei -- tet,
  all Dei -- ner Kin -- der ho -- hen Lob -- ge -- sang.
}

\version "2.14.2"
\paper {
  % #(set-paper-size "a5")
  indent=0\mm
  line-width=160\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bootTitleMarkup=##f
  scoreTitleMarkup=##f
}
\header {
  title = "Von guten Mächten"
}
\score {
  \new Staff <<
    \clef "treble"
    \new Voice = "V1" { \keyTime \myVoice }
    \new Lyrics \lyricsto "V1" { \set stanza = #"1. " \verseOne }
%    \new Lyrics \lyricsto "V1" { \set stanza = #"2. " \verseTwo }
%    \new Lyrics \lyricsto "V1" { \set stanza = #"3. " \verseThree }
    \new Lyrics \lyricsto "V1" { \set stanza = #"2. " \verseFour }
%    \new Lyrics \lyricsto "V1" { \set stanza = #"5. " \verseFive }
%    \new Lyrics \lyricsto "V1" { \set stanza = #"6. " \verseSix }
  >>
  \layout { }
  \midi {
    \context {
      \Score
        tempoWholesPerMinute = #(ly:make-moment 110 4)
    }
  }
}
