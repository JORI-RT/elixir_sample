inc :: Int -> Int --型注釈
inc =  \x  -> x + 1 --無名関数を変数incに束縛している
fact = \n -> case n of
    0         -> 1
    _ | n > 0 -> n * fact (n - 1)
add = \x -> \y -> x+y
f g = g 2 3 ---高階関数　引数が関数
add2 x y = x + y
mul = \x y -> x * y
add3 x = \y -> x + y ---返り値が関数の高階関数

main = do
    print $ inc 5
    print $ fact 5
    print $ add 2 8
    print $ (\x -> x + 1) 1 --- 束縛なしで無名関数を使う
    print $ (\x -> \y ->  x + y) 1 4 --- 束縛なしで無名関数を使う
    print $ f add2
    print $ f mul
    print $ f $ \x y -> x * y ---直接無名関数をわたす
    let add2 = add3 2
    print $ add2 3
    print $ (add 2) 3
    print $ add 2 3
    print $ (\g -> g 1 2) $ \x y -> x + y