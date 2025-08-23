% lilypond -dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts -o out/F1-Theme src/F1-Theme.ly

keyTime = { \key g \major \numericTimeSignature }

myVoice = \relative c' {
  \tempo 4 = 100
  \time 4/4
  r1 e16\mp\< e g e a e g e g e fis e a e fis es g e! fis e e g c b\!\mf r2 e,16\< e g e b' fis g e e e g e e g c b \break
  e, e g e e g c b b8.\!\f b b16 a c1 \time 2/4 r2 \time 4/4 e8.\mf e fis16 g e4 d d b cis2 e8. e fis16 g e4 d \break
  d, g a2 a8. a b16 c a4 g g e fis2 a8. a b16 c a4 g g c d2 r2 c16 a b a c a b a \break
  a8. a a16 b c2 ~ \time 2/4 c2 \time 4/4 a8. c16\cresc b8. d16 c8 a r4 b8. d16 c8. e16 d8 c r4 c8. e16 d8. f16 e8 c r4 \break
  d8. f16 e4 \tuplet 3/2 { a,8 b c } d as\f a!8.\mf c16\cresc b8. d16 c8 a r4 b8. d16 c8. e16 d8 c r4 c8. e16 d8. f16 e8 c r4 \break
  d8. f16 e4 \tuplet 3/2 { a,8 b c } d as\f \time 2/4 r2 \time 4/4 a8.->\mf a-> a8\tweak direction #UP \marcato a-. b-. c-. b-. a8.-> a-> a8\tweak direction #UP \marcato a-. b-. c-. d-. a8.-> a-> a8\tweak direction #UP \marcato a-. b-. c-. b-. \break
  a8.-> a-> a8\tweak direction #UP \marcato a-. b-. c-. d-. a8.-> a-> a8\tweak direction #UP \marcato a16 a b b c c b b a8.-> a-> a8\tweak direction #UP \marcato a16 a b b c c d d a8.-> a-> a8\tweak direction #UP \marcato a16 a b b c c b b \break
  a8.-> a-> a8\tweak direction #UP \marcato a16 a b b c c d d a4 ( b8 c a2 ) ~ a1 ( a4 b8 c a4 d ) e1 a,4 ( b8 c a2 ) e'2 ( f ) \break
  a,4 ( b8 c a4 e ) g1 a4 ( b8 c a4 d,8 f ) e2 ( f ) a4 ( b8 c a4 d ) e1 a,4 ( b8 c a4 g8 f ) e2 ( f ) \break
  a4 ( b8 c a4 e ) g'1 a,8.\mf\< c16 b8. d16 c8 a r4 b8. d16 c8. e16 d8 c r4 c8. e16 d8. f16 e8 c r4 \pageBreak
  d8. f16 e4 \tuplet 3/2 { a,8 b c } d8 as\!\f a!8.\mf\< c16 b8. d16 c8 a r4 b8. d16 c8. e16 d8 c r4 c8. e16 d8. f16 e8 c r4 d8. f16 e4 \tuplet 3/2 { a,8 b c } d8 as\!\f \break
  r1 \key d \major e8. e fis16 g e4 d d b cis2 e8. e fis16 g e4 d d g a2 \key f \major g8. g a16 bes g4 f f d e2 \break
  g8. g a16 bes g4 f f bes c2 \time 2/4 r2 \time 4/4 g8.->\f g-> g8\tweak direction #UP \marcato r2 g8.-> g-> a8\mf\< ~ a2 ~ a bes\! c\< cis\!\ff \break
  g'8.->\f g-> g8-- r2 g8.-> g-> as8\fp ~ as2 \tuplet 3/2 { g8\mp\< g g } \tuplet 3/2 { g8 g g } g4->\!\ff r4
}

\version "2.24.4"
\paper {
  #(set-paper-size "a4")
}

\header {
  title = "F1 theme"
  composer = "Brian Tyler"
  arranger = "Arranged by Nicola & Ricardo Lixi"
  instrument = \markup { "Trumpet in B" \flat }
}

\score {
  \new Staff <<
    \clef "treble"
    \new Voice = "P1" { \keyTime \myVoice }
  >>
  \layout { }
  \midi {
    \Score
    tempoWholesPerMinute = #(ly:make-moment 100 4)
  }
}