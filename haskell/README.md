TODO 

haskellの実行環境を構築

```sh
cd projectroot/haskell
docker run -v `pwd`:/tmp  -it --rm haskell /bin/bash
ghci # haskellのインタラクションモード実行
runghc hello.hs # これでコンパイルー＞実行まで
# ghciの終了
:q
cabal update
cabal install --lib random # installしつつdependencyにいれる？たぶん

```


## 概念
簡約
基底部: fact 0 = 1
再帰部: fact n = n * fact (n - 1)
参照透過性　同じ引数には必ず同じ値を返す
副作用はアクションで扱う
doブロックの実体：各行がラムダ式化されて>>=で連結
action = IOモナド