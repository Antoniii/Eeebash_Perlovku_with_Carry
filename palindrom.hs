import Data.Char

lowerString :: String -> String
lowerString str = [toLower loweredString | loweredString <- str]

palindrom :: String -> String
palindrom xs
	| (lowerString (delSpace xs) == lowerString (delSpace (reverse xs))) = "It's palindrom!"
	| otherwise = "It's not palindrom!"

delSpace :: String -> String
delSpace xs = [x | x <- xs, not (x `elem` "/:?!.,’' ")]

-- palindrom "Аргентина манит негра"
{- 
О, лета тело!
Я — арка края
Madam, I’m Adam
Eve
Saippuakivikauppias (финск. Торговец щёлоком; самое длинное в мире слово-палиндром)
11/11/11 11:11
Dogma I am God
Нин я босой, о... Собянин!
-}
