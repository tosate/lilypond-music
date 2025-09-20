% lilypond -dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts -o out/d1-rlp-tanz src/d1-rlp-tanz.ly

\version "2.24.4"

\paper {
    #(set-paper-size "a4")
}

\header {
    title = "Sie will tanzen"
    composer = "Günther Johannes Schmitz"
    instrument = "Trompete D1"
}

\score {
    \new Staff
        <<
        \clef "treble"
        \new Voice = "P1" {
            \mark "Moderato"
            \key c \major \relative c' {
                \tempo 4=88
                \time 4/4 \numericTimeSignature
                \partial 4
                c8\mf d  e4 c2 d8 c b2 r4 b8c d4 b2 b8d c2 r4 c8 d \break
                e4\< c2 f8 a g4\! e2\> c8 e d4 g2 f8\! d c2.\mf r4 \bar "||" \time 3/4 \break 
                a'4\f a8 a a a g4 e2 d4\p d8e f d e4 g2 a4\f a8 a a a g4 e8 f g e \break
                f4 d8 e f d e\> a g2 a4\!\p a8 a a a g4 e2 d4 d8 e f d e4 g2 \break
                a4\f a8\< a a b c4\!\> b8 a g4 \! fis\p fis8 g a fis g a b2 a4\f a8 a a b c4 g2 \break
                f8\p e d4 f e g r4 a\f a8 a\< a b c4\!\> b8 a g4 \break
                f8 e d4 g c,2\fermata\!\p \breathe c8\mf d \bar "||" \time 4/4 e4 c2 d8 c b2. \breathe d8 c \break
                d4 b2 b8 d c2 r4 c8 d e4\< c2 f8 a g4\! e2\> \breathe c8 e d4 g2\! f8 d c2.\mf \bar "|."
            }
        }
    >>
    \layout { }
    \midi {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
    }
}