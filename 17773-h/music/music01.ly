\version "2.6.5"
\include "english.ly"

\header {
  title = \markup { \override #'(font-name . "Harrington") \fontsize #3.0 "Slavery's Passed Away."}
  %using font closest to original - substitute as necessary
  subtitle = "As sung in Edward Harrigan's Drama,"
  subsubtitle = "\"PETE.\""
  composer = \markup \italic "Music by DAVE BRAHAM."
  poet = \markup \italic "Words by EDWARD HARRIGAN."
  copyright = "Copyright, 1887, by Wm. A. Pond & Co."
  source = "Slavery's passed away and other songs."
}

verseone = \lyricmode {
\set stanza = "1. "
  Oh child come to me and just sit down by my knee, 
  I'll tell that same old sto -- ry just once more; 
  Of dark, cloud -- ed years, oh, so full of bit -- ter tears, 
  In those bond -- age days of long be -- fore the war.
  In rice- field and in cane, there the black man felt the pain,
  The dri -- ver's whip it cut him ev' -- ry day;
  Our good Lord a -- bove, with his nev -- er dy -- ing love,
  Made that cru -- el, cru -- el slave -- ry pass'd a -- way.  
}

versetwo = \lyricmode {
\set stanza = "2. "
  Oh child, in those times then I liv'd a -- mong the pines, 
  Yes, in an old log ca -- bin I was born; 
  Then I heard the moan when the moth -- ers lost their own, 
  In those bond -- age days, oh thank the Lord they're gone.
  That I -- ron chain and band they grow rus -- ty in this land,
  No more the blood hound hold the slave at bay;
  So we bend the knee to the Lord that made us free,
  For that cru -- el, cru -- el slave -- ry pass'd a -- way.
}

versethree = \lyricmode {
\set stanza = "3. "
  Oh I don't com -- plain, it will nev -- er come a -- gain, 
  So all our lit -- tle child -- ren, black and brown; 
  They ne'er can be sold for that yel -- low shin -- ing gold, 
  For sweet Free -- dom, child, she has put on her crown.
  She came here in the night, oh then might gave in to right,
  Old Ab -- ra'm Lin -- coln brought a -- bout the stay;
  So shout Hal -- le -- lu-- there's a lot of work to do,
  For that cru -- el, cru -- el slave -- ry pass'd a -- way.
}

text = { << 
  \new Lyrics \verseone 
  \new Lyrics \versetwo 
  \new Lyrics \versethree 
>> }

global = {
  \key bf \major
  \time 4/4
}

melody = \relative c'' {
  \autoBeamOff

  %intro - empty lyrics staff
  \override Score.RemoveEmptyVerticalGroup #'remove-first = ##t
  \partial 4 s4 s1 s1 s1 s2. \bar "|." \break

  %with lyrics
  \partial 4 f,4 |
  f g8. a16 c4 bf8. d,16 |
  a'8 g fs g ef'4. d8 |
  d c b c d c g8. gs16 |
  a2 r4 f4 |
  f g8. a16 c4 bf8. d16 |
  f8 ef d ef g,4 f'8. ef16 |
  d8 c b c  g bf a8. c16 |
  bf2. \bar ".|."
  g4 |
  g8 a bf c d4 bf8 g |
  f'8 ef bf c d4. d8 |
  c8 d ef d c bf a g | %correcting typo in original (f should be g)
  d'2 r4\fermata f,4 |
  f4 g8. a16 c4 bf8. d16 |
  f8 ef d ef g,4 f'8. ef16 |
  d8 c b c  g8 bf a c |
  bf2. \bar ".|." \pageBreak
}

upperone = \relative c' {
  %intro - no lyrics
  \partial 4 <f f'>4 |
  <f' f,> <g, g'>8. <a' a,>16 <c, c'>4( bf'8) d, |
  <a' a,>8 <g g,> <fs fs,> <g g,> <ef ef'>4. <d' d,>8 |
  <d d,>8 <c c,> <b b,> <c c,> <g g,> <bf bf,> <a a,> <c c,> |
  <bf bf,>2. \bar "|."
  \break

  %with lyrics
  \partial 4 f,4 |
  f g8. a16 c4( bf8.) d,16 |
  a'8 g fs g <g c ef>4. d'8 |
  d c b c d[ c] g8.[ gs16] | %corrected typo g8 gs8
  a16[( <f' a>) <f a>-. <f a>-.] <f a>-.[ <g ef>-. <g ef>-. <f d>-.] <f d>-.[ <ef c>-. <ef c>-. <d b>-.] <ef c>-.[ <d b>-. <ef c>-. <f a,>-.] |
  f,4 g8. a16 c4( bf8.) d16 |
  f8 ef d ef g,4 f'8. ef16 |
  d8[ c b c] g[ bf a8. c16] |
  bf2. |
  <<
    { g4 | g8[ a bf c] d4 bf8[ g] | f'8[ ef bf c] d4. d8 | c8[ d ef d] c[ bf a g] }
    \\
    { g4 | g4. g8 g4. g8 | <g c>4.\arpeggio g8 g4. g8 | g2( g4.) g8 }
  >>
  <fs d'>8 <fs fs'>16[ <g g'>] <a a'>16[ <bf bf'> <c c'> <d d'>] <ef ef'>4\fermata f,4 |
  f4 g8.[ a16] c4 bf8.[ d16] |
  f8[ ef d ef] g,4 f'8.[ ef16] |
  d8[ c b c] g8[ bf a c] |
  bf2. \bar ".|."
}

lowerone = \relative c {
  %intro - no lyrics
  \partial 4 r4 |
  <bf bf,>4 <f' bf d> <d d,> <f bf d> |
  <ef ef,> <g c ef,> <c, c,> <g' c ef> |
  <f f,> << f'2. \\ f,2. \\ { a4( bf c) } >> |
  <d bf>4 <f, f,>-. <bf, bf,>-. \break
  
  %with lyrics
  \partial 4 r4 |
  bf8 f' <bf d> f d f <bf d> f |
  ef g c g c,  g' <c ef> g |
  <f f,> f <a ef'> f <f f,> f <a ef'> f |
  <f f,> f <a ef'> f <a ef'> f <a ef'> f |
  bf,8 f' <bf d> f d f <bf d> f << { r8 g8 b c } \\ { ef,2 } >> <ef ef,>8 g8 <c ef> g |
  <f, f'>8[ f' <a ef'> f] <a ef'>[ f <c' ef> f,] |
  bf,[ f' <bf d> f] <bf d>4 r4 |
  <g, g'>8[ <g' bf d> <g bf d> <g bf d>] <g, g'>8[ <g' bf d> <g bf d> <g bf d>] |
  <c,, c'>8[ <g'' c ef> <g c ef> <g c ef>] <g, g'>8[ <g' bf d> <g bf d> <f g b d>] |
  <ef g c>8 r8 <c ef g c> r <ef g c> r <ef g cs>8[ <ef g cs>] |
  <d fs a d>8 r8 r4 <c f a>4\fermata r4 |
  bf8[ f' <bf d> f] d8[ f <bf d> f] |
  << {ef2} \\ {r8 g8[ b c]} >> <ef,, ef'>8[ g' <c ef> g] |
  <f, f'>8[ f' <a ef'> f] <a ef'>8[ f <c' ef> f,] |
  bf,8[ f' <bf d> f] <bf d>4
}

\score { <<
  \context Voice = mel { \melody
  }
  \lyricsto mel \new Lyrics \text
  \context PianoStaff <<
    \context Staff = upperone { << \global \upperone >> }
    \context Staff = lowerone { \clef bass << \global \lowerone >> }
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

soprano = \relative c'' {
  \autoBeamOff
  \partial 4 f,4 |
  f' f8. f16 f8^\markup { \bold \italic {CHORUS.} } d bf c |
  d bf d, ef f4. f8 |
  f g a bf b c g bf |
  a2 b4\rest f |
  f8 g a bf d4 cs8 d |
  f ef d ef g,4 f'8. ef16 |
  d8 c b c g bf a c |
  bf2. \bar "||"
}

alto = \relative c' {
  \autoBeamOff
  \partial 4 f4 |
  a a8. a16 bf8 bf g g |
  f f bf, c d4. d8 |
  f f f f f f g g |
  f2 s4 f |
  d8 d d d f4 f8 f |
  g g g g ef4 g8. g16 |
  ef8 ef ef ef ef ef ef ef |
  d2. \bar "||"
}

tenor = \relative c' {
  \autoBeamOff
  \partial 4 f,4 |
  ef' ef8. ef16 d8 d ef ef |
  d d bf bf bf4. bf8 |
  a bf c d ef ef e e |
  f2 f,4\rest f |
  bf8 bf bf bf b4 b8 b |
  c c c c c4 c8. c16 |
  a8 a a a bf bf c a |
  bf2. \bar "||"
}

bass = \relative c {
  \autoBeamOff
  \partial 4 f4 |
  f f8. f16 bf8 bf bf bf |
  bf bf, bf bf bf4. bf'8 |
  f f f f f f f f |
  f2 s4 f |
  bf,8 bf' bf bf g4 g8 g |
  ef ef ef ef c4 ef8. ef16 |
  f8 f f f f f f f |
  bf,2. \bar "||"
}

chorus = \lyricmode {
  Oh shout Hal -- le -- lu -- jah, Free -- dom ev -- er rules the land, 
  Go bend your knee, black peo -- ple for to pray; 
  The sha -- ckle and the band has fell from the Bonds -- man's hand, 
  And that cru -- el, cru -- el slav -- ery's pass'd a -- way.
}

uppertwo = \relative c' {
  \partial 4 f4 |
  <f a ef' f> <f a f'>8. <f a f'>16 <f bf f'>8 d' <g, bf> <g c> |
  <f bf d> bf d, <c ef> <d f>4. <d f>8 |
  f f <f a> <f bf> <f b> c' g <g bf> |
  <c, f a>2 r4 f |
  <d f>8 <d f g> <d f a> <d f bf> <f b d>4 <f b cs>8 <f b d> |
  <g c f> <g c ef> <g c d> <g c ef> <ef g>4 <g f'>8. ef'16 |
  <f, d'>8 <f c'> <f b> <f c'> g <g bf> <f a> <a c> |
  <d, f bf>2 ~ <d f bf>4 \bar "||"
}

lowertwo = \relative c {
  \clef bass
  \partial 4 f4 |
  <f, a c f> <f ef' f>8. <f ef' f>16 <bf d f>4 <bf ef g>8 <bf ef g> |
  <bf f' bf>4 <bf f' bf>8 <bf f' bf> <bf f' bf>4. bf'8 |
  << { \stemDown f4 f8 f } \\ { \stemUp a8 bf c d } >> <f, ef'>4 <f c' e>8 <f c' e> |
  f8. f16 c8. a16 f4 f' |
  <bf, f' bf>8 <bf f' bf> <bf f' bf> <bf f' bf> <g g'>4 <g' b>8 <g b> |
  <ef, ef'> <ef' g c> <ef g c> <ef g c> <c, c'> <ef' g c> <ef, ef'> <ef' g c> |
  <f, f'> <f' a ef'> <f a ef'> <f a ef'> <f bf ef> <f bf ef> <f c' ef> <f c' ef> |
  <bf, bf'>4 f'8. d16 bf4 \bar "||"
}

\score { <<
    \context Staff = women <<
      \set Staff.instrument = \markup{ \column {Soprano. Alto.} }
      \context Voice = sopranos { \voiceOne << \global \soprano >> }
      \context Voice = altos { \voiceTwo << \global \alto >> }
    \context Lyrics = altos \lyricsto altos \chorus
    >>
    \context Staff = men <<
      \clef bass
      \set Staff.instrument = \markup{ \column {Tenor. Bass.} }
      \context Voice = tenors { \voiceOne << \global \tenor >> }
      \context Voice = basses { \voiceTwo << \global \bass >> }
    \context Lyrics = basses \lyricsto basses \chorus
    >>
  \context PianoStaff <<
    \set PianoStaff.instrument = \markup { \override #'(font-name . "Old English Text MT") Piano. }
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

%Transcriber's Note: This file produces one .pdf file but two .midi files (one for each \score block). For purposes of this Project Gutenberg e-text, the two .midi files were combined into one using MidiJoiner.  The \score sections could not be combined because of a bug in Lilypond that results in a programming error.