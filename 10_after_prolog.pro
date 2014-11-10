#!/usr/bin/swipl -t main -f 

main :-
    write('% 未来 in Prolog.\n\n'),

    % 「アトム」の一部分を取り出す述語、sub_atom がある。
    %  一部分を 変数X として扱える。
    sub_atom(abc, 0, 2, _, X), writef('%t\n', [X]),
    sub_atom(abc, 1, 2, _, X), writef('%t\n', [X]),

    % しかし、現在のProlog処理系では、
    % 述語の作者が変数として扱えるように定義した部分のみで、
    % 変数を扱える。
    % 例えば、以下はエラーとなる

    %:- sub_atom(X, 1, 2, _, Y), X = abc, writef('\t\n').
    %:- sub_atom(X, _, _, _, abc),X = abc,  writef('\t\\n').

    % 上記のようにしてもエラーがでない Prolog はありかもしれない。

    % 「制約論理プログラミング」
    % 以下は 現在のPrologでは違法だが、
    % 「制約論理プログラミング」だと以下は合法となる

    % :- X>=100,X<=1000,X is Y + 20.
    % X = 120;
    % X = 121;
    % X = 122;
    % :
    % X = 1020.

    % Prolog を強化している言語はほとんどないとのこと

    halt.
