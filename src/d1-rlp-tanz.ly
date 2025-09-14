% lilypond -dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts -o out/d1-rlp-tanz src/d1-rlp-tanz.ly

\version "2.24.4"

\paper {
    #(set-paper-size "a4")
}

\header {
    title = "Tanz"
    composer = "Günther Johannes Schmitz"
    instrument = "Trompete D1"
}

\score {
    \new Staff
        <<
        \clef "treble"
        \new Voice = "P1" {
            \mark "Allegro"
            \key f \major \relative f' {
                \tempo 4=104
                \time 4/4 \numericTimeSignature
                d\f a'8 f g4 c, f a8 f g4 r f\p a8 f g4 e g8\< f e d\! c2 f4\mf a8 f g4 c, \break
                d a'8 bes c4 r d\f bes c a bes8 a g4 f2 e4\p g f a g bes a r \break
                e8 e g4 f8 f a4 g8 g bes4 a2 \breathe e8\mf e g g f f a a g g a bes c4 r \break
                e,8 e g4 f8 f a4 g8 g a b c2 b4 ( c) d b c ( g) a c \break
                b\< ( a g) d'\! c2. r4 c b8 c d4 r c\p b8 c d4 r c\f b8 c d4 b \break
                g8 ( a) b g c2 d4\p a8 bes! c4 r d\f a8 (bes) c4 r d\p\< a8 bes c4 a8 bes c4 d\! e2\fermata \bar "||" \break
                f,4\mf a8 f g a bes4 g8 a bes g a4 f f a8 f g a bes4 c8 (bes) a g f2 \break
                f4\f a8 f g a bes4 g8 a bes g a4 f f a8 f g a bes4 c8 ( bes) a g f2 \bar "|."
            }
        }
    >>
    \layout { }
    \midi {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
}