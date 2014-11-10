#!/usr/bin/swipl -f

:- write('% Prologで入力を扱う(アトムを直接連結する版)  in Prolog.\n\n').

 \n がくるまで読み込む
get_line('\n','').
get_line(C, A) :-
  get_char(C2),
  get_line(C2, B),

  % アトムとして連結する
  atom_concat(C, B, A).

% ?- get_line('', Line).


% Prolog は "文字列" つまり String がある。
% これは C言語でいう char[] のようなものといえる。
% 
% しかし、Prolog では述語の定義に使われているような
% 「アトム」というものもある。
% 「文字列」と「アトム」の相互変換、また、
% プログラムの設計を考えると、
% 積極的に「アトム」を使って書いていくのが良いらしい
%
%   % 文字列の例
%   ?- "尾崎" = X.
%   X = [23614, 23822].
%
%   % アトム
%   ?- 尾崎 = X.
%   X = 尾崎.

% Rubyの感覚だと、 「文字列」と「アトム」は String と Symbol のようにも見える。

%:- halt.



