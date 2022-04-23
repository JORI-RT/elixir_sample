https://elixir-lang.jp/


```elixir
elixir -v
## iexでインタラクティブモード
## Ctl + C を２回押したら終了
## ファイルを実行
elixir simple.exs
## 無名関数の定義  fn とendの間に定義する
add = fn a,b -> a+b end
## コンパイル
elixirc math.ex
## Elixir.Math.beam みたいなものが生成される　同じディレクトリで iexをすると定義したモジュールが使える

## script mode hoge.exs

```

## Elixir
関数＝関数名＋アリティ（引数の数）
round/1 ... 関数名round 引数の数1

アトム 良くわかってない

## [MIX](https://elixir-lang.jp/getting-started/mix-otp/introduction-to-mix.html)
```elixir
 mix new kv --module KV

```

