\version "2.24.1"	% 标记版本便于编译
\language italiano

% \include "event-listener.ly"	% 生成事件分析数据

#(set-global-staff-size 26)

\header {
  title = "杏花天影"
  composer = "姜夔"
  tagline = ##f	% 底部信息
}

% 第一声部
first = \fixed do'' {	% 定义乐谱变量，使用fixed绝对音高
  \clef treble
  \key sol \major
  \time 4/4
  \tempo 4 = 120
  
  r1 r
  la,,2 si,, do, fa,, mi4,, re,, do,, si,,,
  
  
  % 绿丝低拂鸳鸯浦
  re,2 si,4 la, fa1 re2. si,4 la,2. r4
  % 想桃叶
  la,2 mi4 re
  % 当时唤渡
  la, sold,8( la,) sol,2 \grace {la,4( si,} la,2.) r4
  % 又将愁眼与春风
  la,4 si, do fa, la,2 sol,4.( fa,8) mi,2. \breathe
  % 待去
  la,4 fa2.->	% ->表示着重音
  % 倚兰桡
  re4 mi re2.
  % 更少驻
  si,4 do8( la,) \grace{mi4} re2~ | re2
  
  % 金陵路
  fa4 re la,1
  % 莺吟燕舞
  re4 do do2 \grace{re4( mi} re2.) r4
  % 算潮水
  la,2 mi4 re
  % 知人最苦
  la, sold,8( la,) sol,2 \grace{la,4( si,} la,2.) r4
  % 满汀芳草不成归
  la,4 si, do fa, la,2 sol,4.( fa,8) mi,2.
  % 日暮
  la,4 fa2.->
  % 更移舟
  re4 mi re2.
  % 向甚处
  si,4 do8( la,) \grace{mi4} re2~ | re1 \fine

}

% 第二声部
second = \fixed do {	% 定义乐谱变量，使用fixed绝对音高
  \clef bass
  \key sol \major
  \time 4/4
  \tempo 4 = 120
  
  re8 fa re' fa re fa re' fa re fa re' fa re fa re' fa
  re fa la' fa re fa si' fa re fa do'' fa re fa fa' fa re fa la' fa re fa sol' fa re fa fa' fa re fa si fa
  
  % 绿丝低拂鸳鸯浦
  <re la, fa,>1 <fa, si, re> <re la, fa,> mi,4 sol, la, si,
  %a,2 fis4 e c'1 a2. fis4 e2. r4
  % 想桃叶
  %e2 b4 a
  % 当时唤渡
  %e dis8( e) d2 \grace {e4( fis} e2.) r4	% \grace{b4}表示装饰音
  % 又将愁眼与春风
  %e4 fis g c e2 d4.( c8) b,2.
  % 待去
  %e4 c'2.->	% ->表示着重音
  % 倚兰桡
  %a4 b a2.
  % 更少驻
  %fis4 g8( e) \grace{b4} a2~ | a2
  
  % 金陵路
  %c'4 a e1
  % 莺吟燕舞
  %a4 g g2 \grace{a4( b} a2.) r4
  % 算潮水
  %e2 b4 a
  % 知人最苦
  %e dis8( e) d2 \grace{e4( fis} e2.) r4
  % 满汀芳草不成归
  %e4 fis g c e2 d4.( c8) b,2.
  % 日暮
  %e4 c'2.->
  % 更移舟
  %a4 b a2.
  % 向甚处
  %fis4 g8( e) \grace{b4} a2~ | a1 \bar "|."	% 结束符号 \bar "|."

}

% 第三声部
third = \fixed do {	% 定义乐谱变量，使用fixed绝对音高
  \time 4/4
  \tempo 4 = 120
  
  r1 r r r r r
  
  \repeat unfold 2 {\bar ".|:"	% TODO 临时重复一遍
  % 绿丝低拂鸳鸯浦
  <re la, fa,>1 <fa, si, re> <re la, fa,> mi,4\p\< sol, la, si,\ff
  % 想桃叶
  <re la, fa,>2 re4 re
  % 当时唤渡
  re4 re re2 \grace {la,4 si,} re8\ppp\< re re re re re re re\fff
  % 又将愁眼与春风
  re2 re4 re re2 re4 re re re re
  % 待去
  re4 \grace {re8 re} <re la, fa,>2.->
  % 倚兰桡
  re4 mi re4. re8 re4
  % 更少驻
  re4 re8 re \grace {re8 re} re2~
  \bar ":|."}	% TODO 临时重复一遍
  
  % 金陵路
  %c'4 a e1
  % 莺吟燕舞
  %a4 g g2 \grace{a4( b} a2.) r4
  % 算潮水
  %e2 b4 a
  % 知人最苦
  %e dis8( e) d2 \grace{e4( fis} e2.) r4
  % 满汀芳草不成归
  %e4 fis g c e2 d4.( c8) b,2.
  % 日暮
  %e4 c'2.->
  % 更移舟
  %a4 b a2.
  % 向甚处
  %fis4 g8( e) \grace{b4} a2~ | a1 \bar "|."	% 结束符号 \bar "|."

}

% 歌词
myLyrics = \lyricmode {
  绿 丝 低 拂 鸳 鸯 浦
  想 桃 叶
  当 时 唤 渡
  又 将 愁 眼 与 春 风
  待 去
  倚 兰 桡
  更 少 驻
  
  金 陵 路
  莺 吟 燕 舞
  算 潮 水
  知 人 最 苦
  满 汀 芳 草 不 成 归
  日 暮
  更 移 舟
  向 甚 处
  
}

% 实际主体
\score {
  <<
    \new Staff \with {	% 新建五线谱表
      % instrumentCueName = "koto"	% 乐器名标记
      midiInstrument = "koto"	% midi演奏的乐器
    } \first
    \addlyrics \myLyrics	% 添加歌词
    
    \new Staff \with {
      midiInstrument = "shamisen"
      midiMinimumVolume = #0.3
      midiMaximumVolume = #0.7
    } \second
    
    \new RhythmicStaff \with {
      midiInstrument = "taiko drum"
    } \third
    
  >>
  
  \layout { }	% 加这个才会输出pdf（包括预览）
  \midi { }	% 加这个才会输出midi
}