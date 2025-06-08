% https://www.youtube.com/watch?v=Mc6ZwKqhwvk 2:55

keyTime = { \key es \major \time 4/4 \numericTimeSignature }

myVoice = \key f \major
\transpose es f {
  \tempo 4 = 102
   \relative c'' {
    r1 g8\staccato\mf f8\staccato g8\staccato f8\staccato g8 f8\staccato g8\staccato f16( as16~ as8 ) g8\staccato as8\staccato g8\staccato as8\staccato g8 as8 bes16( c16~ c8) bes8\staccato c8\staccato bes8\staccato c8\staccato bes8\staccato c8\staccato bes16( g16~ g8) f8\staccato g8\staccato f8\staccato g8.\staccato as16\staccato r8 g8->~ \break
    g8 f8 g8 f8 g8 f8 g8 f16( as16~ as8) g8 as8 g8 as8 g8 as8 bes16( c16~ c8) bes8 c8 bes8 c8 bes c8 bes16( g16~ g8) f8 g8 f8 g4\staccato as4\staccato g8\f f8 g8 f8 g8 f8 g8 f16( as16~ \break
    as8) g8 as8 g8 as8 g8 as8 bes16( c16~ c8) bes8 c8 bes8 c8 bes8 c8 bes16( g16~ g8) f8 g8 f8 g8.\staccato as16\staccato r8 g8~ g8 f8 g8 f8 g8 f8 g8 f16( as16~ as8) g8 as8 g8 as8 g8 as8 bes16( c16~ \break
    c8) bes8 c8 bes8 c8 bes8 c8 bes16( g16~ g8) f8 g8 f8 g8. as16 r8 g8~ g4 r8 bes,16\mf bes16 g'8 g16( es16) es16( f8.) r4 r8 g8 as8 g16( as16~ as16) g16( f16 es16~ es4) r8 c16 c16 es8 c16( es16~ es16) f16( g8~ \break
    g4) r4 r2 r4 r8 bes,16 bes16 g'8 g16( f16~ f16) es16( f8~ f4) r8 f16 g16 as8 g16( as16~ as16) g16 f16( es16~ es8) es8 es8 es8 es8 c16( g'16~ g16) f16( es8~ es4) r4 r2 \break
    r4 r8 bes16 bes16 g'8 g16( f16~ f16) es16( f8~ f4) r8 f16( g16) as 8 g16( as16 bes8 ) c16( bes16~ bes4) r8 bes16 bes16 c8 bes16( c16~ c16) bes16( g8~ g4) r4 r2 r4 r8 g8~ g8 g8 f8 es8 \break
    f4 r4 as8( g8) as8( g8) es2( f2 g2) r2 r2 r8 bes,8\f g'8 f8~ f4 r4 r8 f8 f8 es8~ \break
    es4 r4 r8 c8 es8 f16( g16~ g8) f8 r8 es8 r2 r2 r8 bes8 g'8 f8~ f4 r4 r8 f8 f8 f8~ f8 es8 r4 r8 c8 es8 f16( g16~ \pageBreak
    g8) f8 r8 es8 r2 r4 r8 bes16 bes16 g'8 g16( f16~ f16) es16( f8~ f4) r8 f16 g16 as8 g16( as16~ as16) g16( f16 es16~ es4) es8 c8 es8 c16( es16~ es16) f16( g8~ g4) r4 r2 \break
    r8 bes,4 bes8 g'8 g16( f16~ f16) es16( f8~ f4) r8 f16 g16 as8 g16 as16~ as16 g8 as16~ as16 g8 as16~ as16 g8 as16~ as16 g8 as16~ as16 g8. g4 r4 r2 r4 r8 bes,16 bes16 g'8 g16( f16~ f16) es16 f8~ \break
    f4 r8 f16 g16 as8 g16( as16~ as16) g16( f16 es16~ es4) r8 es16( c16) es16( c8) es16~ es16 as8. g4 r4 r2 r4 r8 g8~ g8 g8 f8 es8 f4 r4 as8( g8) as8( g8) \break 
    es2( f2 g1)
  }
}

\version "2.24.4"
\paper {
  #(set-paper-size "a4")
}

\header {
  title = "Narcotic"
  subtitle = "Trumpet Solo"
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