## 音高 pitch
- 以下均基于德式音名
- i表示升高，e表示降低；s表示半音，h表示四分之一音
- 半音和四分之一音均可组合，但仅限同样升高或降低
- 示例
```
% 十二平均律
c cis d dis e f fis g gis a bes b
% 四分之一音
c cih cis deh d
% cih = deseh （ciseh不允许使用）
```

## 转调 transpose
```
\transpose c bes {	% c调转降b调
	c e g
}
```

## 谱号 clef
```
\clef treble	% 高音谱号
\clef bass	% 低音谱号
\clef "treble_8"	% 高音谱号向下一个八度
\clef "treble^8"	% 高音谱号向上一个八度
```

## 连音 
- 三连音 \tuplet
```
c2 \tuplet 3/2 { d4 e f }
```
- 延音线 ~
```
a1~ | a1
```
- 连音线()，从开始音右起结束音右止
```
c( d e)
```

## 弱起节拍 partial
```
\time 4/4
\partial 2	% 弱起两拍，必须写在time後
```

## 装饰音 grace
```
c4 d \grace {e8 f} g2
```

## 小节反复
```
\repeat unfold 2 {\bar ".|:" c e g \bar ":|."}	% 其中bar的定义仅起乐谱显示效果
```

## 强弱
```
a8\ppp\< a a a a a a a\fff
```

## 长休止符
```
R1*10	% 注意必须大写
```

## 文本标记
```
c^"上方文本"
c-"下方文本"
```

## 零散
- 调整谱号大小
```
#(set-global-staff-size 26)
```
- 在符头自动显示唱名
```
#(define Ez_numbers_engraver	% step1. 这段定义放在最前
   (make-engraver
    (acknowledgers
     ((note-head-interface engraver grob source-engraver)
      (let* ((context (ly:translator-context engraver))
	     (tonic-pitch (ly:context-property context 'tonic))
	     (tonic-name (ly:pitch-notename tonic-pitch))
	     (grob-pitch
	      (ly:event-property (event-cause grob) 'pitch))
	     (grob-name (ly:pitch-notename grob-pitch))
	     (delta (modulo (- grob-name tonic-name) 7))
	     (note-names
	      (make-vector 7 (number->string (1+ delta)))))
	(ly:grob-set-property! grob 'note-names note-names))))))

#(set-global-staff-size 26)

\layout {
  ragged-right = ##t	% step2. layout中加入这段
  \context {
    \Voice
    \consists \Ez_numbers_engraver
  }
}

\relative c' {
  \easyHeadsOn	% step3. 乐谱开头打开此开关
  c4 d e f
  g4 a b c \break

  \key a \major
  a,4 b cis d
  e4 fis gis a \break

  \key d \dorian
  d,4 e f g
  a4 b c d
}
```
- 散板，不分隔小节，但需要手动换行
```
\cadenzaOn

c d e f g \break
g f e \bar"|" d c \break	% 也可强制加入小节线
\cadenzaOff
```
- 中途换乐器
```
\set Staff.midiInstrument = "shamisen"
```

---

## 基于意式音名
- 音高
```
\language "italiano"

% 十二平均律
do dod re red mi fa fad sol sold la sib
% 四分之一音
do dosd dod resb re
```
- 转调
```
\transpose do sib {	% c调转降b调
	do mi sol
}
```

---

## 通用模板

```
%{
曲目备注
%}

\version "2.24.1"

\language "italiano"

\header {
  title = "曲名"
  composer = "作者"
  tagline = ##f
}

main = \fixed do' {
  \key do \major
  \time 4/4
  \tempo 4 = 90
  
  \transpose do do
  {
  do^"第一句" re mi \fine
  }
}

\score {
  <<
  \new Staff \main \with {
    midiInstrument = "piano"
  }
  >>
  \layout {}
  \midi {}  
}

```