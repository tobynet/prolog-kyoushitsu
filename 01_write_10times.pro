#!/usr/bin/swipl -f

:- write('% 文字(a)をエラーなしで十回出力する問題 in Prolog.\n\n').

% a は文字である
% ↓ は 文字(a) :- true. の省略形ともいえる

文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).

:- write('%% 自分で書いてみたもの\n\n').

%  ↓  fail で終わってしまうので、気持ち悪さが残る
% :- 文字(X), write(X), fail.

%  ↓  fail で終わったら次に移り true になる
:- 文字(X), write(X), fail ; true.

%  ↓ 上記をわかりやすく書くと以下のようになる
%  :- ( 文字(X), write(X), fail ) ; true.


:- write('\n\n').
:- write('%% 尾崎さん推奨版がこちら\n\n').

文字aを10回出力する:- 
  文字(X), write(X), fail.

% ↓  これは、 「文字aを10回出力する :- true.」と等しいことに注目したい
文字aを10回出力する.

:- 文字aを10回出力する.


:- write('\n\n').
:- write('%% forallを使った方法 \n\n').

% > 組込述語 forall は第一引数の副目標が真になる場合は、第二引数の副目標も必ず真になると宣言するメタ述語である。
% via http://ja.wikipedia.org/wiki/Prolog#.E9.83.A8.E5.88.86.E9.9B.86.E5.90.88

:- forall(文字(X), write(X)).

% ↑ 他の言語でみかける foreach や map っぽい

:- halt.
