% lilypond -dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts -o out/anchors-aweigh src/anchors-aweigh.ly

\version "2.24.4"

\paper {
    #(set-paper-size "a5landscape")
    page-count = 1
}

\header {
    title = "ANCHORS AWEIGH"
    subtitle = "(Anker gelichtet)"
    composer = "Musik: Zimmermann/Miles"
    arranger = "Bearb.: Lothar Gottlöber"
    instrument = "1. Trompete"
    % Do not display the tagline for this book
    tagline = ##f
}

\score {
    \new Staff
        <<
        \clef "treble"
        \new Voice = "P1" {
            \key c \major \relative c' {
                \mark \markup { \italic "Flott"}
                \tempo 2=96
                \time 2/2
                r4 f8\f f f4 f c'2 a g a b c c4-> g8 g g2-> ~g4 g8 g g2-> ~ g4 g8 g g4 g4 \break
                g4 r4 r2 \mark \default
                \repeat volta 2 {
                    c,1\mf e2 g a2. e4 a1 c d2 g, c1 ~c4 c8-> c-> c4-> c-> \break
                    a1 c2 a g a b c fis, a d c b4 r4 g2-> f!-> d-> \mark \default \bar "||" c1 e2 g \break
                    a2. e4 a1 c d2 g, c1 ~c4 c8-> c-> c4-> c-> a1 c2 a \break
                    b c e4-> r8 g,-. fis4-. g-. d'-> r8 g, fis4 g c1 ~
                }
                \alternative {
                    { c4 r4 g2-> }
                    { c4 r r2 }
                }
                 \bar "||" \mark \default r2 e,4.->\f e8-. e1-> ~\break
                e4 e8 e e4 gis-> a-> r4 r2 r2 d,4.-> d8-. d1 ~d4 d8 d d4 fis-> g-> r4 g4.-> g8-. b4-> a g fis g-> f! e dis \break
                e-> c8 c e4 g c-> r4 r2
                \key f \major
                \mark \default
                \repeat volta 2 {
                    r1 r1 r1 r4 f,8\< f a4 d f1\!\ff \break
                    g2 c, f4 c8 c a4 c f f-> e-> es-> d f,8 f bes4 d f2 d c d e f \break
                }
                \alternative {
                    { b, d g f-> e4-> r4 c2-> b4-> c8-> c-> c4-> c-> }
                    { a'4-> r4 r2 g4-> r4 r2 }
                }
                f4-> r4 e2-> f4 f8 f f4 r4 \bar "|."
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