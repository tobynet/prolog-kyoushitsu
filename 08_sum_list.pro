#!/usr/bin/swipl -f

:- write('% 2つの再帰的な定義 sum_list in Prolog.\n\n').

:- write('%% 再帰の後で処理をするタイプ(真っ先に浮かぶタイプだが、末尾再帰でないので処理系の最適化を期待できない)\n').
sum_list([],0).
sum_list([M|R], S) :-
  sum_list(R, S2),
  S is M + S2.

% 以下だと計算の情報が足りない(S2のところ)のでうまくいかない
% sum_list([M|R], S) :-
%   S is M + S2,
%   sum_list(R, S2).

:- sum_list([1,2,3,4,5,6,7,8,9,10], X), write(X), write('\n').


:- write('\n').
:- write('%% 再帰の前で処理をするタイプ。末尾再帰の形なので最適化が期待できる\n').

sum_list2(L,S) :-
  sum_list2(L,0,S).

sum_list2([],S,S).
sum_list2([N|R], S1, S) :-
  S2 is S1 + N,
  sum_list2(R, S2, S).

:- sum_list2([1,2,3,4,5,6,7,8,9,10], X), write(X), write('\n').
:- halt.
