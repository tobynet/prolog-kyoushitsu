#!/usr/bin/swipl -f

:- write('% alphabet(a). から alphabet(Z). を出力する問題 in Prolog.\n\n').
:- write('% 再帰を使わない例\n\n').

% SWI-Prolog では memberは組み込み述語でない。上書きしてみる
% member「問い合わせ」に使われていたが、今はリストから取り出すために使われている。

% 最初の member が fail で失敗すると
member(A,[A|_]).
% 二番目の member が実行される！！！
member(A,[_|R]) :- 
  member(A,R).
% member(_,[]).

:- member(C, [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']),
% writef('alphabet(%t).\n', [C]).
  writef('alphabet(%t).\n', [C]), fail; 
  true.
%writef('alphabet(%t).\n', [C]), fail.



:- halt.
