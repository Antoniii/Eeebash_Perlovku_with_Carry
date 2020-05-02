import System.IO
import Data.Time

piUp :: Integer -> [Integer] -- формируем числители
piUp x = [(-1)^n | n <- [0,1..x]]

piDown :: Integer -> [Integer] -- формируем знаменатели
piDown x = [(2*n+1) | n <- [0,1..x]]

pHelp :: [Integer] -> [Float] -- играемся с типами
pHelp xs = read (show xs) :: [Float]

piCalc :: Integer -> Float -- вычисляем pi как сумму дробей
piCalc m = 4 * sum (zipWith (\ a b -> a/b) x y)
 where x = (pHelp (piUp m))
       y = (pHelp (piDown m))

main = do 
 putStr "pi ="
 hFlush stdout
 sn <- getLine
 begT <- getCurrentTime
 print $ piCalc $ read sn 
 endT <- getCurrentTime
 putStr "Count time : "
 print $ diffUTCTime endT begT

 {-
pi =1000000
3.1415973
Count time : 40.854997158s
 -}