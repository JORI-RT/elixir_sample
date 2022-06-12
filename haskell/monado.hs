main = do
    let a = return 1 -- IOモナド　参照透過性がないなにかが入っている
    print =<< a
    let hello = putStr "hello"
    print =<< hello
    print =<< hello
    print [1]
    print (return 1 :: [Int]) --リストモナド　型注釈をつけないと自動的にIOモナドになる
    print (return 1 :: [] Int)
    print =<< return 1
    let a = return 1 :: IO Int
        b = return 1 :: [] Int
    print =<< a
    print $ b !! 0
    print b
    print $ [7] >>= replicate 3 --- >>= で同種のモナドを拘束できる
    print $ "7" >>= replicate 3
--    print =<< [1] IOモナドとリストモナドはbindできない