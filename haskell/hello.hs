import Data.Char ---importは先頭に定義する必要がある
f x = x + 1
add x y = x + y
a = 1
x 1 = "1"
x _ = "?" ---値を無視
--- A = 1  命名規則　大文字始まりはエラー
--- 階上計算
fact 0 = 1
fact n = n * fact (n - 1) --- パターンマッチで再起を表現
--- フィボナッチ数列
fib 0 = 0
fib 1 = 1
fib 2 = 1
fib n = fib(n-1)+fib(n-2)
--- ガード節を用いた階上
fact2 n
    | n == 0    = 1
    | otherwise = n * fact (n - 1)
--- ガードを用いたフィボナッチ数列
fib2 n
    | n == 0 = 0
    | n == 1 = 0
    | n == 2 = 1
    | otherwise = fib2(n-1)+fib2(n-2)
first (x:xs) = x ---リストの最初の要素を返す
second (_:x:_) = x
addsub x y = (x + y, x - y) --- タブル
aa = addsub 1 2
(a1, a2) = addsub 1 2 --- タブルの要素をとりだす

main = do
    print (f 1)
    print $ f 1
    print $ add 1 2
    print $ 1 `add` 2 -- 関数の演算子化
    print $ 1 + 2
    print $ (+) 1 2 -- 演算子の関数化
    if a == 1
        then print "1"
        else print "?"
    print $ if a == 1 then "sankouenzansi" else "?"
    print $ x 0
    print $ x 1  --- パターンマッチ
    print $ fact 5
    print $ fib(8)
    print $ fact2 5
    print $ fib2(8)
    print $ [1, 2, 3, 4, 5] !! 3 --- listから3番目を取得
    print [1..5] --- 連番を作成
    print $ [1, 2, 3] ++ [4, 5] --- リストを結合
    print $ 1:[2..5] --- 先頭に追加
    print $ "abcde" --- 文字列はリストとして扱われる
    print $ ['a', 'b', 'c', 'd', 'e']
    print $ first [1..5]
    print $ first "abcdef"
    print $ second [1..5]
    print $ second "abcdef"
    ---組み込み関数
    print $ length [1, 2, 3]
    print $ sum [1..5]
    print $ product [1..5]
    print $ take 2 [1, 2, 3]
    print $ drop 2 [1, 2, 3]
    print $ reverse [1..5]
    print $ addsub 1 2
    print aa
    print a1
    print a2
    let p2 = (1, 2)
    --- タプル用の関数
    print $ fst p2
    print( snd p2)
    print $ ord 'A'
    print $ chr 65