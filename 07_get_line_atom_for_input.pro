#!/usr/bin/swipl -f

:- write('% get_line(Line) with Atom in Prolog.\n\n').

% \n がくるまで読み込む

get_line('\n','').
get_line(C, A) :-
  get_char(C2),
  get_line(C2, B),
  atom_concat(C,B,A).

%:- get_line(Line), write(Line).
%:- halt.



