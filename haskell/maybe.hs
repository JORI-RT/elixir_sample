--- maybeモナド「1個までしか値が持てないリスト」
--- これは-をガードで弾いているから実行時にエラーがでる
fact 0 = 1
fact n | n > 0 = n * fact (n - 1)
fact2 0 = Just 1
fact2 n | n > 0     = (n *) <$> fact2 (n - 1)
       | otherwise = Nothing

main = do
    let a = return 1 :: Maybe Int ---returnをつかった実装
        b = Just 1 ---Justを使った実装
    print (a, b )
--    print $ fact (-1)  -- 実行時エラー
    print $ fact2 (-1) -- 実行時エラーではなくNothingになる
    print $ fact2 5