import Control.Monad
import Control.Monad.ST
import Data.STRef            -- ⇔ Data.IORef

sum' xs = runST $ do         -- runSTでSTモナドから値を取り出す
    v <- newSTRef 0          -- ⇔ newIORef
    forM_ xs $ \i ->
        modifySTRef v (+ i)  -- ⇔ modifyIORef
    readSTRef v              -- ⇔ readIORef

main = do
    print $ sum' [1..100]    -- 戻り値がモナドに包まれていない