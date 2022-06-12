add x y = return $ x + y ---returnでactionを返す

main = do
    --- r <- randAlpha --- actionから値をとりだす
    --- print r
    --- print =<< randAlpha ---actionから値をとりだして関数にわたす
    --- randAlpha >>= print --- 上と同じ　bind
    print =<< add 1 2
    a <- print "hello"
    print 444
    print a
    let a = print "hello" ---letでactionをaに束縛
    _ <- a --actionから値をとりだす　副作用でprintが動作
    _ <- a
    a
    a