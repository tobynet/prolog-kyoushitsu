#!/usr/bin/swipl -f

:- writeln('% Prologで入力を扱う(最後にリストからアトムへ変換する版)  in Prolog.'), nl.

% Prolog で入力を扱うにはまず read(X) がある
% ref. http://ja.wikipedia.org/wiki/Prolog#.E8.A1.8C.E5.85.A5.E5.8A.9B
% しかし、 read(X) では  1234. や foo(bar). のように
% Prolog の記法でデータを入力しなくてはならない。
% 
% 誇り高きProlog使いは read(X) しかいらないというかもしれないが、
% Prolog はあくまで実務でつかいたいので、
% Prolog 以外の記法でデータを入力したい。
%
% そこで、 get_char/1 の出番となる。

% 改行( \n ) が現れるまで読み込むコードを作ってみよう

get_line(Line) :- 
  get_char(C),    % ※1

  % 一行読み込む
  get_line_list(C,List),

  % リストから「アトム」へ変換する
  atomic_list_concat(List, Line).

  % オマケ: 
  %  atomic_list_concat の代わりに以下も試してみよう
  %
  % atom_chars(Line, List).
  % atomic_list_concat(List, '/', Line).

% リストにして、改行が現れるまで連結していく
get_line_list('\n',[]).
get_line_list(C,[C|R]) :-
  get_char(C2),   % ※1
  get_line_list(C2,R).



% 動作確認には以下のようにファイルを読み込み、
%
%   $ swipl -f (ファイル名) 
%
% 以下のように打ち込んで確認する
%
%   ?- get_line(Line).
%

%:- get_line(Line), write(Line).
%:- halt.


% 補足 ※1:
% 
%   get_char/1 は副作用のある述語であるため、
%   今回のような形が必要。

