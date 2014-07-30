\version "2.6.5"
\include "english.ly"

\header {
  title = \markup { \override #'(font-name . "Ironwood-Medium") \fontsize #5.0 "OLE SHADY." }
  subsubtitle = "THE SONG OF THE CONTRABAND."
  source = "Slavery's Passed Away and Other Songs"
}

global = {
  \key bf \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  \override Rest #'style = #'classical
}

%Main1

verseone = \lyricmode {
  Oh! yah! yah! dark -- ies laugh wid me,
  For de white folks say Ole Sha -- dy's free,
  So don't you see dat de ju -- bi -- lee
  Is a com -- ing, com -- ing, Hail migh -- ty day.
}

melody = \relative c' {
  \autoBeamOff
  \partial 4 r4 | R1 | 
  r2 r4 \bar "|." f4 |
  bf,8 c d ef f bf f d16 d |
  c8 d ef f g a g f |
  d' d d c16 c d8 c bf f16 f |
  g16 bf8. r4 g16 bf8. r4 |
  c4 c8 d bf4 r \bar "|."
}

upperone = \relative c' {
  \partial 4 f4 | bf8->_\f c d ef f-> bf f d |
  ef16 d c bf c8 c bf4 \bar "|." r4 |
  r8 <f bf d> <f bf d> <f bf d> r <f bf d> <f bf d> <f bf d> |
  r <g c ef> <g c ef> <g c ef> r <g c ef> <g c ef> <g c ef> |
  r <f bf d> <f bf d> <f bf d>  r <f bf d> <f bf d> <f bf d> |
  <g bf ef>4 <g bf ef> <g bf ef> <g bf ef> |
  <f a c> <f a c>8 <f a c> <f bf d>4 r4 \bar "|."
}

lowerone = \relative c {
  \partial 4 r4 | bf8 <d f> <d f> <d f> d <f bf> <f bf> <f bf>  |
  ef <g c> f <a ef'> <bf d>4 \bar "|." r4 |
  <bf, bf,>4 r <bf bf,> r |
  <ef ef,> r <c c,> r |
  <bf bf,>4 r <bf bf,> r |
  ef, r ef r |
  <f' f,> <f f,>8 <f f,>8 <bf, bf,>4 r \bar "|."
}

\score { <<
  \context Voice = mel { \global \melody }
  \lyricsto mel \new Lyrics \verseone
  \context PianoStaff <<
    \context Staff = upperone { << \global \upperone >> }
    \context Staff = lowerone { \clef bass << \global \lowerone >> }
  >>
>>
  \layout {
    indent = 0.0\cm
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
  \partial 16*2 f,16^\markup { \musicglyph #"scripts.segno" CHORUS. } bf |
  d4.. c16 d4. c16 d |
  ef8 d c bf g16 bf8. r8 bf |
  c4. bf8 c2 |
  g4 a8 a bf4. \bar "|."
  \partial 16*2 f16 bf |
  d4.. c16 d4. c16 d |
  ef8 d c bf g16 bf8. r8 bf |
  c4. bf8 c2 |
  g4 a8 a bf4. \bar ".|."
}

alto = \relative c' {
  \autoBeamOff
  \partial 16*2 d16 d |
  bf'4.. a16 bf4. a16 bf |
  c8 bf a g ef16 g8. r8 g |
  a4. a8 a2 |
  g4 g8 f f4. \bar "|."
  \partial 16*2 d16 d |
  bf'4.. a16 bf4. a16 bf |
  c8 bf a g ef16 g8. r8 g |
  a4. a8 a2 |
  g4 g8 f f4. \bar ".|."
}

tenor = \relative c' {
  %tenor clef in original is incorrect - notes weren't transposed
  \autoBeamOff
  \partial 16*2 f16 f |
  f4.. f16 f4. f16 f |
  f8 g a bf bf16 bf8. r8 bf |
  ef4. d8 ef2 |
  c4 ef8 ef d4. \bar "|."
  \partial 16*2 f,16 f |
  f4.. f16 f4. f16 f |
  f8 g a bf bf16 bf8. r8 bf |
  ef4. d8 ef2 |
  c4 ef8 ef d4. \bar ".|."
}

bass = \relative c {
  \clef bass
  \autoBeamOff
  \partial 16*2 bf16 bf |
  bf4.. bf16 bf4. bf16 bf |
  bf8 bf bf bf ef16 ef8. r8 ef |
  f4. f8 f2 |
  ef4 f8 f, bf4. \bar "|."
  \partial 16*2 bf16 bf |
  bf4.. bf16 bf4. bf16 bf |
  bf8 bf bf bf ef16 ef8. r8 ef |
  f4. f8 f2 |
  ef4 f8 f, bf4. \bar ".|."
}

chorus = \lyricmode {
  Den a -- way, a -- way, for I can't wait a -- ny long -- er,
  Hoo -- ray, hoo -- ray, I'm go -- ing home.
  Den a -- way, a -- way, for I can't wait a -- ny long -- er,
  Hoo -- ray, hoo -- ray, I'm go -- ing home.
}

uppertwo = \relative c' {
  \partial 8 r8^\markup { \musicglyph #"scripts.segno" } |
  r <f, bf d> <f bf d> <f bf d> r <f bf d> <f bf d> <f bf d> |
  r <f bf d> <f bf d> <f bf d> r <g bf ef> <g bf ef> <g bf ef> |
  r <f a c> <f a c> <f a c> r <f a c> <f a c> <f a c> |
  r <g c ef> r <f a c> <f bf d>4. \bar "|."
  \partial 8 r8 |
  r <f bf d> <f bf d> <f bf d> r <f bf d> <f bf d> <f bf d> |
  r <f bf d> <f bf d> <f bf d> r <g bf ef> <g bf ef> <g bf ef> |
  r <f a c> <f a c> <f a c> r <f a c> <f a c> <f a c> |
  r <g c ef> r <f a c> <f bf d>4. \bar ".|."
}

lowertwo = \relative c {
  \clef bass
  \partial 8 r8 |
  <bf, bf'>4 r <bf bf'> r |
  <bf bf'> r ef r |
  f r f r |
  ef8 r f r <bf, bf'>4. \bar "|."
  \partial 8 r8 |
  <bf bf'>4 r <bf bf'> r |
  <bf bf'> r ef r |
  f r f r |
  ef8 r f r <bf, bf'>4. \bar ".|."
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
      \context Voice = basses { << \global \bass >> }
    >>
  >>
  \context PianoStaff <<
    \context Staff = uppertwo { << \global \uppertwo >> }
    \context Staff = lowertwo { << \global \lowertwo >> }
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

%Main2

versetwo = \lyricmode {
  \set stanza = "2. "
  Oh, Mass' got scared and so did_his la -- dy,
  Dis chile breaks for Ole Un-cle A -- by,
  \override LyricText #'font-shape = #'italic
  ''O-pen de gates out here's Ole Sha -- dy_a
  com -- ing, com -- ing,'' \override LyricText #'font-shape = #'normal-text
  Hail migh -- ty day.
}

versethree = \lyricmode {
  \set stanza = "3. "
  Good bye Mass' Jeff, good bye Mis'r Steph -- ens,
  'Scuse dis niggah for takin his leav -- ins,
  'Spect pretty soon you'll hear Un-cle Ab -- ram's
  com -- ing, com -- ing, Hail migh -- ty day.
}

textone = { << 
  \new Lyrics \versetwo 
  \new Lyrics \versethree
>> }

melodytwo = \relative c'' {
%verses two and three
  \autoBeamOff
  \partial 4 f,4 |
  bf,8 c8 d8 ef8 f8 bf16( bf16) f8 d8 |
  c8 d8 ef16( ef16) f8 g16( g16) a16( a16) g8 f8 |
  d'16( d16) d16( d16) d8 c8 d8 c16( c16) bf8 f16( f16) |
  g16 bf8. r4 g16 bf8. r4|
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  c4 c8 d bf4 r8\mark \markup { \musicglyph #"scripts.segno" } \bar "|."
}

upperthree = \relative c' {
%verses two and three
  \partial 4 r4 |
  r8 <d bf f>8 <d bf f> <d bf f> r8 <d bf f> <d bf f> <d bf f> |
  r8 <ef c g> <ef c g> <ef c g> r8 <ef c g> <ef c g> <ef c g> |
  r8 <d bf f > <d bf f> <d bf f> r8 <d bf f> <d bf f> <d bf f> |
  <ef bf g >4 <ef bf g> <ef bf g> <ef bf g> |
  <c a f> <c a f>8 <c a f> <d bf f>4  r8^\markup{ \column {Chorus. \halign #-7.0 \musicglyph #"scripts.segno"} } \bar "|."
}

lowerthree = \relative c {
  %verses two and three
  \partial 4 r4 |
  <bf bf,>4 r <bf bf,> r |
  ef, r <c' c,> r |
  <bf bf,> r <bf bf,> r |
  ef, r ef r |
  <f f'> < f f'>8 <f f'>8 <bf bf,>4 r8
}

\score { <<
  \context Voice = meltwo { \global \melodytwo }
  \lyricsto meltwo \new Lyrics \textone
  \context PianoStaff <<
    \context Staff = upperthree { << \global \upperthree >> }
    \context Staff = lowerthree { \clef bass << \global \lowerthree >> }
  >>
>>
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
  \midi { \tempo 4 = 100 }
}

%Main3

versefour = \lyricmode {
  \set stanza = "4th. "
  Good bye hard work wid never a -- ny pay, Ise_a
  gwine up North where_the good folks say, Dat
  white wheat bread and a dollar a day, Are
  com -- ing, com -- ing, Hail migh -- ty day.
}

versefive = \lyricmode {
  \set stanza = "5th. "
  Oh, I've got_a wife, and I've got a ba -- by,
  Living up yonder in Lower \override LyricText #'font-shape = #'italic Ca -- na -- dy,
  \override LyricText #'font-shape = #'normal-text
  Won't dey laugh when dey see Ole Sha -- dy_A
  com -- ing, com -- ing, Hail migh -- ty day.
}

texttwo = { <<
  \new Lyrics \versefour
  \new Lyrics \versefive
>> }

melodythree = \relative c' {
%verses four and five
  \autoBeamOff
  \partial 4 f4 |
  bf,8 c16( c16) d8 ef8 f16( f16) bf16 bf16 f8 d16( d16) \break
  c16( c16) d16( d16) ef16( ef16) f16( f16) g16( g16) a8 g8 f8 |
  d'8 d8 d8 c16 c16 d16( d16) c8 bf8 f16( f16) \break
  g16 bf8. r4 g16 bf8. r4 |
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  c4 c8 d8 bf4 r8\mark \markup { \musicglyph #"scripts.segno" } \bar "|."
}

upperfour = \relative c' {
%verses four and five
  \partial 4 r4 |
  r8 <d bf f>8 <d bf f> <d bf f> r8 <d bf f> <d bf f> <d bf f> |
  r8 <ef c g> <ef c g> <ef c g> r8 <ef c g> <ef c g> <ef c g> |
  r8 <d bf f > <d bf f> <d bf f> r8 <d bf f> <d bf f> <d bf f> |
  <ef bf g >4 <ef bf g> <ef bf g> <ef bf g> |
  <c a f> <c a f>8 <c a f> <d bf f>4  r8^\markup{ \column { Chorus. \halign #-7.0 \musicglyph #"scripts.segno"} } \bar "|."
}

lowerfour = \relative c {
  %verses four and five
  \partial 4 r4 |
  <bf bf,>4 r <bf bf,> r |
  ef, r <c' c,> r |
  <bf bf,> r <bf bf,> r |
  ef, r ef r |
  <f f'> < f f'>8 <f f'>8 <bf bf,>4 r8 \bar "|."
}

\score { <<
  \context Voice = melthree { \global \melodythree }
  \lyricsto melthree \new Lyrics \texttwo
  \context PianoStaff <<
    \context Staff = upperfour { << \global \upperfour >> }
    \context Staff = lowerfour { \clef bass << \global \lowerfour >> }
  >>
 >>
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
  \midi { \tempo 4 = 100 }
}

\paper { raggedbottom = ##t }

%Transcriber's Note: This file produces one .pdf file but several .midi files (one for each \score block). For purposes of this Project Gutenberg e-text, the .midi files were combined into a single .midi file using MidiJoiner.  The \score sections could not be combined because of a bug in Lilypond that results in a programming error.

%Transcriber's Note: This file was produced from two versions of this song, nearly identical, but one more accurate than the other. No author or copyright information was given on either version.

%Transcriber's Note: The word "Canady" in the original lyrics was marked with a footnote, "Canada."