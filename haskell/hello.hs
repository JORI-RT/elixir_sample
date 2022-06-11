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
