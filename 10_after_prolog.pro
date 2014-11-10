#!/usr/bin/swipl -f

:- write('% 未来 in Prolog.\n\n').

:- sub_atom(abc, 0, 2,_,X), writef('%t', [X]).
:- sub_atom(abc, 1, 2,_,X), writef('%t', [X]).

% 以下のように変数にできない
:- sub_atom(X, 1, 2,_,Y), X = abc, writef('\t').
:- sub_atom(X, _, _,_,abc),X = abc,  writef('\tX').

% 以下は Prologではだめだが、制約論理プログラミングだと以下は合法
% :- X>=100,X<=1000,X is Y + 20.

% 強化されているものはほとんどない


:- halt.




