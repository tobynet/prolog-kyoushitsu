#!/usr/bin/swipl -f

:- write('% 単位節要素の加算(集約問題) in Prolog.\n\n').

年齢(山田,35).
年齢(大島,20).
年齢(清川,28).

% :- 年齢(X,Y)

% 年齢を加算をしようとするも、
% 下記の時点だと、その上は参照できない状態になっている
%   年齢(清川,28).


% 述語を作るやり方があるが……
%
% ref. https://ja.wikipedia.org/wiki/Prolog#.E5.89.AF.E4.BD.9C.E7.94.A8.E3.81.AB.E3.81.A4.E3.81.84.E3.81.A6
%
%  上記にコードがあるが冗長なので、Prologプログラマはやらない
%
% 一時合計(0).
% 一時合計(35).
% S = 35 + 26.
% 一時合計(55).
% ..
% ?- 一時合計(S).

% なので、findall

:- halt.



