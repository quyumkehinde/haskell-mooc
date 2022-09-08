applyTo1 :: (Integer -> Integer) -> Integer
applyTo1 f = f 1

addThree :: Integer -> Integer
addThree x = x + 3

-- The dot (.) operator
-- WIthout it
sumThenMultiply5 x = 5 * (5 + x)

--With it
sumThenMultiply5' = (* 5) . (+ 5)

-- building a list
buildList 0 = []
buildList x = x : buildList (x - 1)

-- pattern matching for list
getFirst :: [a] -> Maybe a
getFirst [] = Nothing
getFirst (x : xs) = Just x

sumOfFirstTwo [] = 0
sumOfFirstTwo [x] = x
sumOfFirstTwo (x : x' : xs) = x + x'

addNumbers [] = 0
addNumbers (x : xs) = x + addNumbers xs

doubleListValues [] = []
doubleListValues (x : xs) = (2 * x) : doubleListValues xs
