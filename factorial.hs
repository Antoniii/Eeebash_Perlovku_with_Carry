import System.IO
import Data.Time

factorial64 :: Integer -> Integer
factorial64 0 = 1
factorial64 1 = 1
factorial64 n = n * factorial64 (n-1)

main = do 
 putStr "n="
 hFlush stdout
 sn <- getLine
 begT <- getCurrentTime
 print $ factorial64 $ read sn 
 endT <- getCurrentTime
 putStr "Count time : "
 print $ diffUTCTime endT begT

{-
10 000 Time: 0.1995 s
100 000 Time: 26.8468 s
-}