% author: Thomas Salm
% http://www.devtom.de

keyTime = {\key c \major \time 4/4 \numericTimeSignature }

sopranVoice = \relative c' {
  e'4 b8 c d e16 d c8 b
  a4 a8 c e4 d8 c
  b4 b8 c d4 e
  c a a2
  r8 d4 f8 a4 g8 f
  e4 e8 c e4 d8 c
  b4 b8 c d4 e
  c a a r
  e'2 c d b c a gis b
  e c d b c4 e a2 gis1
}

altVoice = \relative c' {
  b'4 gis8 a b e16 d a8 gis
  e4 e8 a c4 b8 a
  gis8 e gis a b4 c
  a e e2
  r8 f4 a8 c c16 c b8 a
  g4 g8 e g a16 g f8 e
  gis e gis a b gis c gis
  a e e4 e r
  c'2 a b gis a e e g
  c a b gis a4 c e2 e1
  
}

bassVoice = \relative c {
  e8 e' e, e' e, e' e, e'
  a, a' a, a' a, a' a, a'
  gis, gis' gis, gis' gis, gis' gis, gis'
  a, a' a, a' a, a' b, c'
  d d, r d r d a f
  c c' r c c, g r g
  b b' r b r e r gis
  a, e' a, e' a,4 r
  a8 e' a, e' a, e' a, e'
  gis, e' gis, e' gis, e' gis, e'
  a, e' a, e' a, e' a, e'
  gis, e' gis, e' gis, e' gis, e'
  a, e' a, e' a, e' a, e'
  gis, e' gis, e' gis, e' gis, e'
  a, e' a, e' a, e' a, e'
  gis, e' gis, e' gis, e' gis, e'
}

\version "2.14.2"
\header {
  title = "Korobeiniki"
  arranger = "M. Thienel"
}
\score {
  \new PianoStaff <<
    \repeat volta 2
    \new Staff <<
      \clef "treble"
      \new Voice = "Sopran" { \voiceOne \keyTime \sopranVoice }
      \new Voice = "Alt" { \voiceTwo \altVoice }
    >>
    \new Staff <<
      \clef "bass"
      \new Voice = "Bass" { \keyTime \bassVoice }
    >>
  >>
  \layout {}
  \midi {
    \context {
      \Score
        tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
