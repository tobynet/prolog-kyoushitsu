#!/usr/bin/swipl -f


:- write('% selectを利用した例 in Prolog.\n\n').

% refs.
%   http://ja.wikipedia.org/wiki/Prolog#.E9.A0.86.E5.88.97
%   https://ja.wikipedia.org/wiki/Prolog#select
%
:- write('今回は省略').

% 補足:
%
%   「組み合わせの総数」では、 "nCr(N,R,X) :-" のような述語の定義をしている。
%   http://ja.wikipedia.org/wiki/Prolog#.E7.B5.84.E5.90.88.E3.81.9B.E3.81.AE.E7.B7.8F.E6.95.B0 
%
%   nCr のように先頭が小文字だと述語名として利用できる。
%   NCR のように先頭が大文字だと、変数扱いになり、述語として定義できない。
%   その際は、'NCR' のようにシングルクォーテーションでくくるとよいらしい。
%
% nCr の実装は、深みにハマるので今回は省略

:- halt.


