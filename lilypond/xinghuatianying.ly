\version "2.24.1"	% 标记版本便于编译

\header {
  title = "杏花天影"
  composer = "姜夔"
  tagline = ##f	% 底部信息
}

myMelody = \fixed c' {	% 定义乐谱变量，使用fixed绝对音高
  \clef treble	% 使用五线谱
  \key g \major	% 什么调
  \time 4/4	% 节拍
  \tempo 4 = 100	% 速度

  % 绿丝低拂鸳鸯浦
  a,2 fis4 e c'1 a2. fis4 e2. r4
  % 想桃叶
  e2 b4 a
  % 当时唤渡
  e dis8( e) d2 \grace {e4( fis} e2.) r4	% \grace{b4}表示装饰音
  % 又将愁眼与春风
  e4 fis g c e2 d4.( c8) b,2.	% 连音线() 从开始音右起结束音右止
  % 待去
  e4 c'2.->	% ->表示着重音
  % 倚兰桡
  a4 b a2.
  % 更少驻
  fis4 g8( e) \grace{b4} a2~ | a2	% 同音连线用~
  
  % 金陵路
  c'4 a e1
  % 莺吟燕舞
  a4 g g2 \grace{a4( b} a2.) r4
  % 算潮水
  e2 b4 a
  % 知人最苦
  e dis8( e) d2 \grace{e4( fis} e2.) r4
  % 满汀芳草不成归
  e4 fis g c e2 d4.( c8) b,2.
  % 日暮
  e4 c'2.->
  % 更移舟
  a4 b a2.
  % 向甚处
  fis4 g8( e) \grace{b4} a2~ | a1 \bar "|."	% 结束符号 \bar "|."

}

\addlyrics {
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

\score {	% 实际主体
  \new Staff \with {	% 新建五线谱表
    % instrumentCueName = "Flute"	% 乐器名标记
    midiInstrument = "oboe"	% midi演奏的乐器
  } \myMelody	% 引用乐谱变量
  \layout { }	% 加这个才会输出pdf（包括预览）
  \midi { }	% 加这个才会输出midi
}