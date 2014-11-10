#!/usr/bin/swipl -f

:- write('% get_line(Line) in Prolog.\n\n').

% \n がくるまで読み込む

get_line(Line) :- 
  get_char(C),
  get_line_list(C,List),
  % atom_chars(Line, List).
  %atomic_list_concat(List, Line).
  atomic_list_concat(List, '/', Line).

get_line_list('\n',[]).
get_line_list(C,[C|R]) :-
  get_char(C2),
  get_line_list(C2,R).

%:- get_line(Line), write(Line).
%:- halt.



