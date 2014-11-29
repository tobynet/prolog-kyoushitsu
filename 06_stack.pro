#!/usr/bin/swipl -f

:- writeln('% stack in Prolog.'), nl.

% データ構造の例として、簡単に定義できる Stack を実装してみる

スタックを生成する([]).

スタックにpush(_pushされる要素, _push前のスタック,
               [_pushされる要素|_push前のスタック]).

スタックからpop([_popされる要素|_pop後のスタック],
                 _popされる要素, _pop後のスタック).

% Stack は定義しやすい反面、利用はしにくい

:- スタックを生成する(A),
   スタックにpush(1,A,B),
   スタックにpush(2,B,C),
   スタックにpush(3,C,D),
   writef('push後のスタック: %t', [D]), nl,  % [3,2,1]
   スタックからpop(D,_,E),
   スタックからpop(E,_,F),
   writef('pop後のスタック: %t', [F]), nl.    % [1]


:- halt.
