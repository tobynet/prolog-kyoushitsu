#!/usr/bin/swipl -f

:- write('% member の代わりに select in Prolog.\n\n').
% ref. https://ja.wikipedia.org/wiki/Prolog#select

% select(X, [a,b,c], R).
  % X = a,
  % R = [b, c] ;
  % X = b,
  % R = [a, c] ;
  % X = c,
  % R = [a, b] ;
  % false.

% select(X, [a,b,c], d, R).

% select(X, [a,b,c], D, R).

% select(X, [a,b,c], Y, R), Y = 3.
% select(X, [a,b,c], Y, R), Y is 4 + 3.

:- halt.

