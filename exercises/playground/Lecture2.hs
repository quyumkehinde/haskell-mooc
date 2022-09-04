-- repeatString 3 "ABC"

repeatString :: Integer -> [Char] -> [Char]
repeatString x str
  | x < 0 = ""
  | x == 0 = str
  | otherwise = str ++ repeatString (x - 1) str

fibonacci :: Integer -> Integer
fibonacci x
  | x < 1 = 0
  | x == 1 = 1
  | otherwise = fibonacci (x - 1) + fibonacci (x - 2)

fibonacci2 :: Integer -> Integer
fibonacci2 x
  | x > 0 = fibonacci2' 1 0 x
  | otherwise = 0

fibonacci2' :: Integer -> Integer -> Integer -> Integer
fibonacci2' curr prev x
  | x == 1 = curr
  | otherwise = fibonacci2' (curr + prev) curr (x - 1)

-- The `Maybe` data type
login :: String -> Maybe String
login "Quyum" = Just "Login Successful"
login _ = Nothing

data Response' a b = Error a | Success b

-- The Either type constructor
readIntOrStr :: Either Int String -> String
readIntOrStr (Left x) = show x
readIntOrStr (Right str) = str

describeInt :: Integer -> String
describeInt x =
  case x of
    1 -> "one"
    2 -> "two"
    3 -> "three"
    4 -> "four"
    5 -> "five"
    6 -> "six"
    7 -> "seven"
    8 -> "eight"
    9 -> "nine"
    10 -> "ten"
    _ -> "greater than ten"