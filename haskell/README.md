TODO 

haskellの実行環境を構築

```sh
cd projectroot/haskell
docker run -v `pwd`:/tmp  -it --rm haskell /bin/bash
ghci # haskellのインタラクションモード実行
runghc hello.hs # これでコンパイルー＞実行まで
# ghciの終了
:q

```