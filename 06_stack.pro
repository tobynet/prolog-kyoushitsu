#!/usr/bin/swipl -f

:- write('% stack in Prolog.\n\n').

スタックを生成する([]).
スタックにpush(_pushされる要素,_push前, ).
スタックからpush([_popされる要素,_pop],).

% スタックに要素を追加する(_pushされる要素,_push前のスタック,[_pushされる要素|_push前のスタック]).
 
% スタックから要素を取り出す([_popされる要素|_pop後のスタック],_popされる要素,_pop後のスタック).

?- スタックを生成する(A),
  スタックにpush(2,A,B),
  スタックにpush(1,B,C),
  スタックにpush(3,D,E),
  % .

:- halt.



