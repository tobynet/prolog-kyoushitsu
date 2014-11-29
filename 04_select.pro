#!/usr/bin/swipl -f

:- writeln('% member と似た select/3 とselect/4 との違い in Prolog.'), nl.
% ref. https://ja.wikipedia.org/wiki/Prolog#select

% select/3 の使用例:
%
%   ?- select(X, [a,b,c], R).
%   X = a,
%   R = [b, c] ;
%   X = b,
%   R = [a, c] ;
%   X = c,
%   R = [a, b] ;
%   false.

:- select(X, [a,b,c], R),
   writef('X = %t, R = %t;', [X, R]), nl,
   fail; true.

:- nl, nl.
:- writeln('% 補足:'), nl.
%
:- writeln('%% select/4 は select/3 と異なる挙動をするので注意が必要'), nl.
%  大きな違いは第三引数にある。

:- writeln('%%% 第三引数に「定数」を入れた場合'), nl.
%
%       ?- select(X, [a,b,c], d, R).
%       X = a,
%       R = [d, b, c] ;
%       X = b,
%       R = [a, d, c] ;
%       X = c,
%       R = [a, b, d] ;
%       false.
:- select(X, [a,b,c], d, R), 
   writef('X = %t, R = %t;', [X, R]), nl,
   fail ;
   true.

:- nl, nl.
:- writeln('%%% 第三引数が「変数」の場合'), nl.
%
%       % (Dは大文字なので変数扱いになる)
%       ?- select(X, [a,b,c], D, R).
%       X = a,
%       R = [D, b, c] ;
%       X = b,
%       R = [a, D, c] ;
%       X = c,
%       R = [a, b, D] ;
%       false.
%
%       % 値が決まるとさかのぼって、決定される。
%
%       ?- select(X, [a,b,c], D, R), D = 3.
%       X = a,
%       D = 3,
%       R = [3, b, c] ;
%       X = b,
%       D = 3,
%       R = [a, 3, c] ;
%       X = c,
%       D = 3,
%       R = [a, b, 3] ;
%       false.
:- select(X, [a,b,c], D, R), D = 3,
   writef('X = %t, R = %t;', [X, R]), nl, 
   fail ;
   true.
:- nl, nl.

:- writeln('%%% さかのぼって、計算も可能'), nl.
%
%       ?- select(X, [a,b,c], Y, R), Y is 4 + 3.

:- select(X, [a,b,c], D, R), D is 4 + 3,
   writef('X = %t, R = %t;', [X, R]), nl,
   fail ;
   true.

:- halt.

