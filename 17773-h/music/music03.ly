\version "2.6.5"
\include "english.ly"

\header {
  title = "THE LITTLE LOG CABIN ON THE HILL."
  subtitle = "SONG AND CHORUS."
  composer = "Music by HERBERT HERSEY."
  poet = "Words by ARTHUR W. FRENCH."
  copyright = "Copyright, 1876, by JOHN P. PERRY & Co."
  source = "Slavery's Passed Away and Other Songs"
}

%Main

verseone = \lyricmode {
  \set stanza = "1. "
  'Twas ma -- ny years a -- go I left de sun -- ny South, to roam 
  Up North, de hap -- py day dat I was free; 
  From mas -- sa an' ole mis -- sus, too, and all de folks at home, 
  Whose fac -- es now I neb -- er more shall see; 
  I'se trab -- eled night and day to see de dear old place once more;
  De cot -- ton fields, de rib -- ber, and de mill; 
  But most of all, where I was born, in hap -- py days be -- fore, 
  In de lit -- tle log cab -- in on de hill! 
 }

versetwo = \lyricmode {
  \set stanza = "2. "
  Oh, I re -- mem -- ber eb -- ry day, when all our work was o'er, 
  We'd hear de bones' and ban -- jos' sweet re -- frain,
  While all de dark -- ies danc'd and swung a -- round de cab -- in door;
  Dem hap -- py times will neb -- er come a -- gain; 
  We'd hunt de pos -- sum and de coon un -- til de morn -- in' fair, 
  An' laugh and shout, so gay and jol -- ly still; 
  Such joy -- ous, hap -- py dark -- ies, an' we had no tho't of care, 
  In de lit -- tle log cab -- in on de hill!
}

versethree = \lyricmode {
  \set stanza = "3. "
  Up -- on de ole plan -- ta -- tion there is no one left I know; 
  De folks are wan -- d'ring all so far a -- way,
  An' strang -- ers meet me eb -- ry -- where, yes, eb -- ry -- where I go! 
  But round dis ole place Ise a -- goin' to stay; 
  Dar's one spot left, they say, where I can ev -- er -- more re -- main;
  Dar kind -- ness makes my poor heart throb and thrill; 
  Ise grow -- in' ole and wear -- y, so I'll neb -- er roam a -- gain 
  From de lit -- tle log cab -- in on de hill!
}

text = { << 
  \new Lyrics \verseone 
  \new Lyrics \versetwo 
  \new Lyrics \versethree 
>> }

global = {
  \key g \major
  \time 4/4
}

melody = \relative c' {
  \autoBeamOff

  %intro - empty lyrics staff
  \override Score.RemoveEmptyVerticalGroup #'remove-first = ##t
  s1*3 s2. \break

  %with lyrics
  \partial 4 d4 |
  b'8 b b b d d g, g |
  a g fs g e4. d8 |
  g g fs g a g fs g |
  a2 ~ a4 a |
  b8 b b b d d g,8. g16 |
  a8 g fs g e4. e8 |
  g8 g g g g fs b a |
  g2. b4 |
  d8 d e d d b b8. b16 |
  b8 d d g, a4. a8 |
  a b c8. c16 c8 e d c |
  b2. d,4 |
  b'8 b b b d d g, g |
  a g fs g e2 |
  g8 g g16 g g8 g fs a b |
  g2. r4 \bar "||"
}

upper = \relative c'' {
  <b b'>8^\markup{ \italic \halign #.5 {ALLEGRETTO.} } <b b'> <b b'> <b b'> <d d'> <d d'> <g, g'> <g g'> |
  <a a'> <g g'> <fs fs'> <g g'> <e e'>2 |
  <d d'>4 <g g'> <g g'>8( <fs fs'>) <c' fs b>( a') |
  <b, d g>2. \bar "|" \break
  r4 |
  r4 <b, d g> r <b d g> |
  r <c e g> r <c e g> |
  r <b d g> r <b d g> |
  r <a d fs> r <a d fs> |
  r <b d g> r <b d g> |
  r <c e g> r <c e g> |
  r4 <d g b,>4 r <c d fs> |
  <d g b,>2. r4 |
  <b' d>8[ <b d>] <c e>[ <b d>] <b d>[ <b g>] <g b>8.[ <g b>16] |
  <g b>8([ <b d>)] <d b>([ <g, b>)] <fs a>4. <fs a>8 |
  <fs a>[ <g b>] <a c>8.[ <a c>16] <a c>8[ <c e>] <d b>[ <a c>] |
  <g b>2. r4 |
  r <g d b>4 r <g d b> |
  r <g e c> r <g e c> |
  r <g d b>  r <g d c> |
  <g d b>2. r4 |
}

lower = \relative c {
  << g'2^\markup { \bold \italic {mf} } \\ { g8 d' b d }>> << g,2 \\ { g8 d' b d }>>  |
  << c,2 \\ { c8 a' e a }>> << c,2 \\ { c8 a' e a }>> |
  << d,2 \\ { d8 b' g b }>> << <d, fs a c>2 { s8 s s s } >> |
  <g, g'>2. \bar "|"
  r4 |
  <g g'> r <g g'> r |
  <c, c'> r <c c'> r |
  <g' g'> r <g g'> r |
  <d d'> r <d d'> r |
  <g g'> r <g g'> r |
  <c, c'> r <c c'> r |
  <d d'>4 r4 <d d'> r |
  <g g'>2. r4 |
  <g g'>2. r4 |
  <g g'>2 <d d'>2 |
  <d d'>2. r4 |
  <g g'>2. r4 |
  <g g'>4 r4 <g g'> r |
  <c, c'> r <c c'> r |
  <d d'> r <d d'> r |
  <g g'>2. r4 |  
}

\score { <<
  \context Voice = mel { \global \melody }
  \lyricsto mel \new Lyrics \text
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

chorus = \lyricmode {
  Oh de lit -- tle log cab -- in, yes, de cab -- in on de hill;     
  It's stand -- ing there, the same old cab -- in still;
  'neath de dear old roof I'll lie,
  An' I'll lay me down an' die, 
  In de lit -- tle log cab -- in on de hill.
}

soprano = \relative c'' {
  \autoBeamOff
  b8^"CHORUS." b b16 b b8 c c^\fermata c8. c16 |
  a8 a a a b4. b8 |
  d8 d d d e d d g, |
  a2. r4 |
  b8 b b b d d d g,16 g |
  a8 g fs g e2 |
  d8 g g16 g g8 g fs a b |
  g2. \bar "|."
}

alto  = \relative c' {
  \autoBeamOff
  g'8 g g16 g g8 g g^\fermata g8. g16 |
  fs8 fs fs fs g4. g8 |
  g g g g g g g d |
  fs2. r4 |
  g8 g g g g g g d16 d |
  e8 e e e e2 |
  d8 d d16 d d8 d d fs d |
  d2. \bar "|."
}

tenor = \relative c' {
  \autoBeamOff
  f'8 f f16 f f8 e8 e^\fermata e8. e16 |
  d8 d d d d4. d8 |
  b8 b b b c b b b |
  d2. r4 |
  d8 d d d b b b b16 b |
  c8 c c c g2 |
  b8 b b16 b b8 b a c d |
  b2. \bar "|."
}

bass = \relative c {
  \autoBeamOff
  g'8 g g16 g g8 c,8 c^\fermata c8. c16 |
  d8 d d d g4. g8 |
  g8 g g g g g g g, |
  d'2. r4 |
  g8 g g g g g g g16 g |
  c,8 c c c c2 |
  c8 d d16 d d8 d d d d | %second to last note missing in original
  g,2. \bar "|."
}

uppertwo = \relative c' {
<b d f g>4 <b d f g> <c e g> <c e g> |
<a d fs> <a d fs> <b d g>2 |
r4 <b d g> r <b d g> |
<a d fs>2. r4 |
r4 <b d g> r <b d g> |
r <c e g> r <c e g> |
r <b d g> r <c d fs> |
<b d g>2. \bar "|."
}

lowertwo = \relative c {
<g g'>4 <g g'> <c, c'> <c c'> |
<d d'> <d d'> <g g'>2 |
<g g'>4 r <g g'> r |
<d d'>2. r4 |
<g g'>4 r <g g'> r |
<c, c'> r <c c'> r |
<d d'> r <d d'> r |
<g, g'>2. \bar "|."
}

\score { <<
  \context ChoirStaff <<
    \context Staff = sopranos <<
      \set Staff.instrument = "Soprano. "
      \context Voice = sopranos { << \global \soprano >> }
      \context Lyrics = sopranos \lyricsto sopranos \chorus
    >>
    \context Staff = altos <<
      \set Staff.instrument = "Alto. "
      \context Voice = altos { << \global \alto >> }
    >>
    \context Staff = tenors <<
      \set Staff.instrument = "Tenor. "
      \context Voice = tenors { << \global \tenor >> }
      \context Lyrics = tenors \lyricsto tenors \chorus
    >>
    \context Staff = basses <<
      \set Staff.instrument = "Bass. "
      \context Voice = basses { \clef bass << \global \bass >> }
    >>
  >>
  \context PianoStaff <<
    \set PianoStaff.instrument = "Accomp. "
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

%Transcriber's Note: This file produces two .midi files, one for each \score. For purposes of this Project Gutenberg e-text, the two .midi files were combined into one using MidiJoiner.  The \score sections could not be combined because of a bug in Lilypond that results in a programming error.
