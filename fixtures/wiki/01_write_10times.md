メモ: https://github.com/tobynet/prolog-kyoushitsu/wiki/prolog-to-markdown

# 10回定義した "文字(a)" をエラーなしで出力する課題 in Prolog

a は文字である
↓ は 文字(a) :- true. の省略形ともいえる

```prolog
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
文字(a).
```

## 自分で書いてみたもの

↓  fail で終わってしまうので、気持ち悪さが残る


```prolog
:- 文字(X), write(X), fail.
```

↓  fail で終わったら次に移り true になる

```prolog
:- 文字(X), write(X), fail ; true.
```

↓ 上記をわかりやすく書くと以下のようになる

```prolog
:- ( 文字(X), write(X), fail ) ; true.
```


## 尾崎さん推奨版がこちら

```prolog
文字aを10回出力する:- 
  文字(X), write(X), fail.
```

↓  これは、 「文字aを10回出力する :- true.」と等しいことに注目したい
```prolog
文字aを10回出力する.
```

```prolog
:- 文字aを10回出力する.
```

## forallを使った方法

> 組込述語 forall は第一引数の副目標が真になる場合は、第二引数の副目標も必ず真になると宣言するメタ述語である。

via <http://ja.wikipedia.org/wiki/Prolog#.E9.83.A8.E5.88.86.E9.9B.86.E5.90.88>

```prolog
:- forall(文字(X), write(X)).
```

↑ 他の言語でみかける foreach や map っぽい

```prolog
:- halt.
```
