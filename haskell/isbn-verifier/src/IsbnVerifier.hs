module IsbnVerifier (isbn) where
  import Data.Char

  removeIphens :: String -> String
  removeIphens xs = [x | x <- xs, not (x `elem` "-") ]

  convertListString :: [Char] -> [Int]  
  convertListString b = map digitToInt b
  
  multi :: Num a => (a, a) -> a
  multi (x,y) = x*y

  apply :: (a -> b) -> [a] -> [b]
  apply f (x:xs) =  map f (x:xs)
  
  isbn :: String -> Bool
  isbn string 
            | s `mod` 11 == 0 = True
            | otherwise = False
            where a = reverse [1..10]
                  b = convertListString(removeIphens string)
                  tuples = zip a b 
                  prod = apply multi tuples
                  s = sum prod
