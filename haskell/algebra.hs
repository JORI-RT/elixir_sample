--- 列挙型　Color型/Blueコンストラクタ 大文字はじまり
data Color = Blue | Red | Green | White deriving (Show,Enum) --- プリントできるように
--- 直積型
data Point = Point Int Int deriving Show
offset (Point x1 y1) (Point x2 y2) =
    Point (x1 + x2) (y1 + y2)
--- フィールドが１つの直積
newtype Foo = Foo Int
--- 直和型　 直積の和
data Test = TestInt Int
          | TestStr String
          deriving Show
foo (TestInt  1 ) = "bar"
foo (TestStr "1") = "baz"
foo _             = "?"

main = do
    print Blue
    print $ fromEnum Red --- 数値、Enum変換
    print (toEnum 1 :: Color)
    print False --- Boolは標準パッケージで定義
    print (toEnum 1 :: Bool)
    let a = Point 2 3
        b = Point 1 1
        c = offset a b
    print c
    print $ foo $ TestInt  0
    print $ foo $ TestInt  1
    print $ foo $ TestStr "0"
    print $ foo $ TestStr "1"