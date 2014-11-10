# コレは何か

「Prolog 初級教室」の「課題」とその「解答例」です。

2014年11月8日に所沢市にて、「[Prologおじさん]」こと [尾崎さん] による「[Prolog 初級教室]」が開催されました。
教室にぼくが参加した際に出された「課題」と、ぼく自身が解答したものをアップロードしてみました。
[Prolog] を学習されたい方の参考になればと思います。

## 注意点

なにとぞ、以下をご了承ください！

* **ソース内の「用語」は Prolog 的に正しくない場合があります。** これを書いた当時、筆者が Prolog 初心者であるためです。
* **課題の番号は、公式なものではありません。** 見通しをよくする目的で、ぼくが適当につけたものです。
* **課題内容が「初級向けでない」もしくは「初級向けすぎる」ように見えるかも……。** 参加者の「学びたいこと」や「レベル」に応じて出された課題なためです。
* **課題になっていないものがあります。** 雑談を無理やりぼくがファイルに記録していたためです。

「用語」や正解のコードの間違いを発見された場合は、Issue でのご指摘や Pull request などをいただけると幸いです。

## 課題一覧

1. [10回述語定義した "文字(a)." を **エラーなしで** 出力する](01_write_10times.pro)
2. ["alphabet(a)." から "alphabet(Z)." までを **再帰で** 出力する](02_generate_predicates_with_recursion.pro)
3. ["alphabet(a)." から "alphabet(Z)." までを **再帰なしで** 出力する](03_generate_predicates_without_recursion.pro)
4. [member述語と似たselect述語について](04_select.pro)
5. [selectを使った「順列」 (今回は省略)](05_permutation.pro)
6. [stack の実装](06_stack.pro)
7. 実用的なプログラムのための文字入力
    * [リストを使ったバージョン](07_get_line_list_for_input.pro)
    * [アトムを使ったバージョン](07_get_line_atom_for_input.pro)
8. [2つの再帰的な定義](08_sum_list.pro)
9. [データベース的な処理(集約問題)](09_database_addition.pro)
10. [プロローグの未来(課題ではない)](10_after_prolog.pro)


## 最後に

[Prolog] をご服用の際は、用法要領を守り、楽しくご利用ください。

[尾崎さん]: https://twitter.com/TakaoOzaki "Prologおじさん"
[Prolog]: http://ja.wikipedia.org/wiki/Prolog "8割は尾崎さんが書いているとの噂"
[Prologおじさん]: https://twitter.com/TakaoOzaki/status/341817757521813504
[Prolog 初級教室]: http://nojiriko.asia/prolog/prolog_kyoushitsu_1.html
