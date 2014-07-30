\version "2.6.5"
\include "english.ly"

\header {
  title = "DARKEY SAM."
  subtitle = "SONG AND CHORUS."
  composer = "Arr. by J. YOUNG, Esq."
  source = "Slavery's Passed Away And Other Songs"
}

%Main

verse = \lyricmode {
  Oh my name is Dar -- key Sam, 
  And I'se a black -- eyed con -- tra -- band; 
  Down on de Chick -- a -- hom -- i -- nee I was born; 
  But old mas -- sa run a -- way, 
  When de Lin -- kum so -- gers play:
  So, I start -- ed for de Norf in de morn....         
  I soon met wid a man,     
  And he took me by de hand,        
  And he brought me to de Bob -- o -- li -- tion meet -- in:
  Dar de brud -- ders made a speech, 
  And de sis -- ters 'gan to preach;
  Dey said dat my com -- plex -- ion was light,
  And de world dey would teach
  What a point dey could reach,
  And dey'd show dat dey could wash de nig -- ger white.
}

global = {
  \key bf \major
  \time 4/4
}

melody = \relative c'' {
  \autoBeamOff

  %intro - empty lyrics staff
  \override Score.RemoveEmptyVerticalGroup #'remove-first = ##t
  \partial 4 s4 | s1 s1 s1 s2 s4 \bar "|." \break

  %with lyrics
  \partial 4 f,8. f16 |
  bf8 bf bf8. bf16 bf8 bf a bf |
  c bf a g f4 r8 f8 |
  g8. g16 g g8. \times 2/3 {a8 a a} g8 a |
  bf2~ bf8 r8 f8. f16 |
  bf16 bf8. bf8 bf bf4 a8 bf |
  c bf a g f4 r8 f16 f |
  g8 g g g g4 a8. a16 |
  bf2~ bf4 r8 f |
  ef' ef ef ef ef4^\fermata f,8 bf |
  d d d d d4^\fermata f,8 f |
  g g g g ef' ef c c |
  bf2 a4 f8. f16 |
  bf16 bf8. bf8 bf bf4 a8 bf |
  c bf a g f4 r8 f |
  g8 g g g a16 a8. r8 a |
  bf2 r4 f8 f |
  bf4 bf8. bf16 bf4 a8 bf |
  c8[ bf] a g f4 f8 f |
  g g g g a8. a16 a8 a |
  bf2~ bf4 \bar "|."
}

upper = \relative c' {

  %intro
  \once \override TextScript #'padding = #2.0
  \partial 4 f4^\markup{ \bold \halign #.5 {Moderato.} } |
  bf8 bf bf8. bf16 bf8 bf a bf |
  c bf a g f4 r8  f8 |
  <ef g>8. <ef g>16 <ef g>8 <ef g> <ef f a> <ef f a> <ef f a> <ef f a> |
  <d bf'>2~ <d bf'>4 \break

  %lyrics
  \partial 4 r4 |
  r8 d8 <f bf>8 d r d <f bf> d |
  r8 <c f bf>[ r8 <c e g>] r <c f a> <c f a> <c f a> |
  r8 bf8 <ef g> bf r c <f a> c |
  r <d bf'> d f bf d bf f |
  r8 d <f bf> d r d <f bf> d |
  r <c f bf>[ r <c e g>] r <c f a> <c f a> <c f a> |
  r bf <ef g> bf r c <ef f a> c |
  <d f bf>2~ <d f bf>4 r4 |
  r2 <c f a>4\arpeggio^\fermata r4 |
  r2 <d f bf>4\arpeggio^\fermata r4 |
  r8 bf <ef g> bf r <bf ef g>[ r <c e g>] |
  <d f bf>2\arpeggio <c f a>4 r4 |
  r8 d f bf r d, f bf |
  r <c, f bf>[ r <c e g>] r <c f a> <c f a> <c f a> |
  r8 bf <ef g> bf r c <ef a> c |
  r d f bf d bf f d |
  r d f bf r d, f bf |
  r8 <c, f bf>[ r <c e g>] r <c f a> <c f a> <c f a> |
  r bf ef g r c, ef a |
  <d, bf'>2~ <d bf'>4 |
}

lower = \relative c {

  %intro
  \partial 4 r4 |
  <bf bf'>8 <f' bf d> <f bf d> <f bf d> <bf, bf'>8 <f' bf d> <f bf d> <f bf d> |
  <f f,> <f a c> <c c,> <e g bf> <f a> <f a> <f a> <f a> |
  ef8 bf' g bf f  c' a c |
  <bf, f' bf>2~ <bf f' bf>4 \break

  %with lyrics
  \partial 4 r4 |
  <bf f' bf>2\arpeggio <bf f' bf>2\arpeggio |
  <f' f,>8[ r8 <c c,>] r <f f,>4 r4 |
  <ef ef,>2\arpeggio <f f,>\arpeggio |
  <f bf,>\arpeggio~ <f bf,>4\arpeggio r4 |
  <bf, bf'>4\arpeggio r <bf bf'>\arpeggio r |
  <f f'>8[ r c'] r <f, f'>4\arpeggio r |
  <ef ef'> r <f f'> r |
  <bf f'>2~ <bf f'>4 r |
  f'8 f, a c <f, a c f>4\arpeggio^\fermata r |
  bf'8 bf, d f <bf, d f bf>4\arpeggio^\fermata r |
  <ef, ef'>4 r <ef ef'>8[ r <c c'>] r |
  <f f'>2~ <f f'>4 r |
  <bf bf'>^\markup{\italic {livelier.}} r <bf bf'> r |
  <f f'>8[ r c'] r <f, f'>4\arpeggio r |
  <ef ef'>4\arpeggio r <f f'>\arpeggio r |
  <bf f'>2~ < bf f'>4 r |
  <bf bf'>\arpeggio r <bf bf'> r |
  <f f'>8[ r c'] r <f, f'>4\arpeggio r |
  <ef ef'>\arpeggio r <f f'>\arpeggio r |
  <bf f'>2~ <bf f'>4 |
}

\score { <<
  \context Voice = mel { \global \melody }
  \lyricsto mel \new Lyrics \verse
  \context PianoStaff <<
    \context Staff = upper { << \global \upper >> }
    \context Staff = lower { \clef bass << \global \lower >> }
  >>
>>
  \layout {
    indent = 0.0\cm
    \context {
      \RemoveEmptyStaffContext
    }
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
  \midi { \tempo 4 = 100 }
}

%Chorus

soprano = \relative c' {
  \autoBeamOff
  \once \override TextScript #'padding = #2.0
  \partial 8 f8^\markup{ \bold \halign #.5 {CHORUS.} } |
  ef' ef ef ef ef4^\fermata f,8 bf |
  d d d d d4^\fermata f,8 f |
  g8 g g g ef' ef c c |
  bf2 a4 f8. f16 |
  bf8 bf bf bf bf4 a8 bf |
  c bf a g f4 r8 f |
  g4 g8 g a a a a | 
  bf2~ bf4 \bar ".|."
}

alto = \relative c' {
  \autoBeamOff
  \partial 8 f8 |
  f f f f f4^\fermata f8 f |
  f f f f f4^\fermata f8 f |
  ef8 ef ef ef g g g g |
  f2 f4 f8. f16 |
  f8 f f f f4 f8 f |
  f f e e f4 r8 f |
  ef!4 ef8 ef ef ef ef ef |
  d2~ d4 |
}

tenor = \relative c' {
  \autoBeamOff
  \partial 8 f8 |
  c' c c c c4^\fermata c8 c | %corrected typo 2d to last note
  bf bf bf bf bf4^\fermata bf8 bf
  bf8 bf bf bf c c ef e |
  d2 c4 c8. c16 |
  d8 d d d d4 c8 d |
  ef8 d c bf a4 r8 a8 |
  bf4 bf8 bf c c c c |
  d2~ d4|
}

bass = \relative c {
  \autoBeamOff
  \partial 8 f8 |
  f f f f f4^\fermata f8 f |
  bf, bf bf bf bf4^\fermata bf8 bf |
  ef8 ef ef ef c c c c |
  f2 f4 f8. f16 |
  bf,8 bf bf bf bf4 bf8 bf |
  ef8 ef c c f4 r8 f |
  bf,4 bf8 bf f' f f f |
  bf,2~ bf4 |
}

chorus = \lyricmode {
  I soon met wid a man, And he took me by de hand,
  And he brought me to de Bob -- o -- li -- tion meet -- in: 
  Dar de brud -- ders made a speech, 
  And de sis -- ters 'gan to preach: 
  Dey said dey could wash de nig -- ger white.
}

uppertwo = \relative c' {
  \partial 8 f8 |
  <f c' ef>2 <f c' ef>4\arpeggio^\fermata f8 bf |
  <f bf d>2 <f bf d>4\arpeggio^\fermata f8 f |
  r8 <bf, ef g> <bf ef g> <bf ef g> r <bf ef g>[ r <c e g>] |
  <d f>2( <c f>4) r4 |
  r8 d f bf r d, f bf |
  r8 <c, f bf>[ r <c e g>] r <c f a> <c f a> <c f a> |
  r bf ef g r c, ef a |
  <d, f bf>2~ <d f bf>4 |
}

lowertwo = \relative c {
  \partial 8 r8 |
  f f, a c <f, a c f>4\arpeggio^\fermata r |
  bf'8 bf, d f <bf, d f bf>4\arpeggio^\fermata r |
  <ef, ef'>4\arpeggio r <ef ef'>8[ r <c c'>] r |
  <f f'>2~ <f f'>4 r |
  <bf bf'>4\arpeggio r <bf bf'>4 r |
  <f f'>8[ r c'] r <f, f'>4 r |
  <ef bf' ef>4\arpeggio r <f f'>\arpeggio r |
  <bf f'>2~ <bf f'>4 |
}

\score { <<
  \context ChoirStaff <<
    \context Staff = sopranos <<
      \set Staff.instrument = \markup { \fontsize #-4.0 {SOP.} }
      \context Voice = sopranos { << \global \soprano >> }
      \context Lyrics = sopranos \lyricsto sopranos \chorus
    >>
    \context Staff = altos <<
      \set Staff.instrument = \markup { \fontsize #-4.0 {ALTO.} }
      \context Voice = altos { << \global \alto >> }
    >>
    \context Staff = tenors <<
      \set Staff.instrument = \markup { \fontsize #-4.0 {TENOR.} }
      \context Voice = tenors { << \global \tenor >> }
      \context Lyrics = tenors \lyricsto tenors \chorus
    >>
    \context Staff = basses <<
      \set Staff.instrument = \markup { \fontsize #-4.0 {BASS.} }
      \context Voice = basses { \clef bass << \global \bass >> }
    >>
  >>
  \context PianoStaff <<
    \set PianoStaff.instrument = \markup { \fontsize #-4.0 \halign #.5 {TENON.} }
    \context Staff = uppertwo { << \global \uppertwo >> }
    \context Staff = lowertwo { \clef bass << \global \lowertwo >> }
  >>
>>
\layout {
    \context {
      \Score
       \remove Bar_number_engraver
    }
 }
  \midi { \tempo 4 = 100 }
}

\paper { raggedbottom = ##t }

%Transcriber's Note: This file produces two .midi files, one for each \score.  For purposes of this Project Gutenberg e-text, the two files were combined into one using MidiJoiner.  The \score sections could not be combined because of a bug in Lilypond that results in a programming error.

%Transcriber's Note: Some inconsistent arpeggios in the original have been corrected in this file.
