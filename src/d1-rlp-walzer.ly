% lilypond -dbackend=eps -dno-gs-load-fonts -dinclude-eps-fonts -o out/d1-rlp-walzer src/d1-rlp-walzer.ly

\version "2.24.4"

\paper {
    #(set-paper-size "a4")
}

\header {
    title = "Walzer für Amadé"
    composer = "Günther Johannes Schmitz"
    instrument = "Trompete D1"
}

\score {
    \new Staff
        <<
        \clef "treble"
        \new Voice = "P1" {
            \mark "Vivace"
            \key d \major \relative d' {
                \tempo 4=132
                \time 3/4
                \repeat volta 2 {
                    d\f ( fis-.) a-. b ( g-.) e-. a ( fis-.) d-. cis8 ( b) cis-. d-. cis4 \break
                    b8-. cis-. d-. e-. fis-. g-. fis4 ( a-.) d,-. e ( g-.) cis,-. d2. \break
                }
                d4--\f d8-. cis-. b4 e-- e8-. d-. cis4 fis-- fis8-. e-. d4 g2 fis8-.\> e-.\! \break
                d4--\p d8_. cis_. b4 e-- e8_. d_. cis4 cis8 ( d e4_. ) fis_. d2 r4 \break
                \set crescendoText = \markup { \italic { crescendo poco a poco } }
                \set crescendoSpanner = #'text
                fis4\mf( d-.) d-. d4. e8 fis4 g\< ( e-.) e-. e4. fis8\! g4 \break
                g ( e-.) e-. e4. fis8 g4 a ( fis-.) fis fis2\f r4 \break
                a ( fis8 ) fis fis fis fis4. g8 a4 b ( g8) g g g g4 ( fis-.) e \break
                cis\p cis8-. d-. e-. g-. fis4 ( a-.) d,-. e ( g-.) cis,-. a'2. \break
                d4\f cis8-. b-. a-. g-. fis4 ( a-.) d,-. e-"rit." e e d2. \bar "|."
            }
        }
    >>
    \layout { }
    \midi {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 120 3)
    }
}