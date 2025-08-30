% lilypond -dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts -o out/musikantengruss src/musikantengruss.ly

\version "2.24.4"

\paper {
    #(set-paper-size "a5landscape")
    page-count = 1
}

\header {
    title = "MUSIKANTENGRUSS"
    subtitle = "Marsch"
    composer = "SIEGFRIED RUNDEL"
    instrument = "1. Trompete in B"
    % Do not display the tagline for this book
    tagline = ##f
}

\score {
    \new Staff
        <<
        \clef "treble"
        \new Voice = "P1" {
            \key c \major \relative c'' {
                \tempo 2=96
                \time 2/2
                c2\f b4. a8 g1 a4 r b2-> ( c4 ) r g4.\mf g8
                \repeat volta 2 {
                    c4 c2 g4 c2 e4. e8 d4 d2 a4 d2 d4. c8 b2 d ~ \break
                    d4 d d b c2 e ~ e4 r g,4. g8 c4 c2 g4 c2 g4 ( c ) e e2 c4 e2 c4. e8 d2. d8 d d2 e4 ( d ) \break
                    c g8 g \tuplet 3/2 { g4 e g }
                }
                \alternative {
                    { c r g4. g8 }
                    { c4 r r2 }
                }
                \repeat volta 2 {
                    r4\f c8 c c4 c r c r c r c8 c c4 c c c c c r b8 b b4 b b1 \break
                    r4 c8 c c4 c c r r2 r 4 c8 c c4 c r d r d r c8 c c4 c c r r2 r4 c8 c c4 c b1 r4 c8 c c4 c \break
                }
                \alternative {
                    { c4 r r2 }
                    { c4 r\f c2-> }
                }
                \bar "||"
                \key f \major
                f4 r \tuplet 3/2 { f f f } f r r2
                \repeat volta 2 {
                    c4 r c r d r c r c r \tuplet 3/2 { c c c } c r c r d r d r \break
                    d r d r c r \tuplet 3/2 { c c c } c r c r c r c r c r c r d r \tuplet 3/2 { d d d } d r d r d r d r d r d r\break
                    c\< c8 c \tuplet 3/2 { c4 c c } c2\!\f c4. c8 c1 b2 bes a1 ~ a4 r f'4. f8 f1 e2 es d1 ~ d4 r d4. d8 \break
                    e2 e e d c1 ~ c4 r c4. c8 d1 e2 d4 ( e )
                }
                \alternative {
                    { f1 ~ f4 r r2 }
                    { f4 r c2-> f4 f8 f f4 r }
                }
                \bar "|."
            }
        }
        >>
        \layout {
        \context {
            \Score
            \remove "Metronome_mark_engraver"
        }
    }
    \midi {}
}