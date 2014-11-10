#!/usr/bin/swipl -f

:- write('% alphabet(a). から alphabet(Z). を出力する問題(再帰なし版) in Prolog.\n\n').

% 学習のため、member/2 述語を上書きして定義してみる。
% SWI-Prolog では member は組み込み述語でないため、上書きが可能。
% 
% かつて、 member述語は 「問い合わせ」に使われていたが、
% 今はリストから値を取り出す(?)ために使われているらしい。
%
% member の定義を見たい場合は listing述語を使うのがよい
%
%   ?- listing(member).

% 最初の member が fail で失敗した場合は、次へ
member(A, [A|_]).

% 二番目の member が実行される！
member(A, [_|R]) :- 
  member(A, R).

% 再帰なしのバージョン
'a-Zまでの文字を出力する(再帰なし)' :-
    member(C, [a, b, c, d, e, f, g, h, i, j, k, l, m,
               n, o, p, q, r, s, t, u, v, w, x, y, z,
               'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
               'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
               'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
               'Y', 'Z']),

    writef('alphabet(%t).\n', [C]),
    fail; true.

:- 'a-Zまでの文字を出力する(再帰なし)'.

:- halt.
