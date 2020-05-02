-- fuzzBuzz :: Int -> String
-- fuzzBuzz x
-- 	| (x `mod` 15 == 0) = "FuzzBuzz"
-- 	| (x `mod` 5 == 0) = "Fuzz"
-- 	| (x `mod` 3 == 0) = "Buzz"
-- 	| otherwise = show x

-- [fuzzBuzz x | x <- [1..20]]

fuzzBuzz2 :: Int -> [String]
fuzzBuzz2 xs = [fuzzBuzz x | x <- [1..xs]]
	where fuzzBuzz x
		| (x `mod` 15 == 0) = "FuzzBuzz"
		| (x `mod` 5 == 0) = "Fuzz"
		| (x `mod` 3 == 0) = "Buzz"
		| otherwise = show x