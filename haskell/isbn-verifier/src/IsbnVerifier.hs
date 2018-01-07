

module IsbnVerifier (isbn) where
  import Data.List
  
  f x y = x*y
  mapper :: (a-> b -> c ) -> [a] -> [b] -> [c]
  mapper f (x:xs) (y:ys) = (f x y) : (mapper f xs ys)
  mapper _ [] _ = []
  mapper _ _ [] = []
--  f (x:xs) = map (3*) x:xs
--    let list = [10,9..1] 



-- let string = "3-598-21508-8"
-- let list = [10,9..1]
--  take1 _ [] = []
--  take1 0 _ = []
--  take1 n (x:xs) = x : take1 (n-1) xs

--  f :: Num a => a -> [a]
--  f x  =  x * y
--    where y = [10,9..1]

  
  
  isbn :: String -> Bool
  isbn = error "" 
--  isbn validBookIdent = do
--    let digit = [10,9..1]

--  | (map f validBookIdent ) mod 11 == 0 = True
--  | otherwise = False
 -- where f x = [if x \= "-" then digit*x | digit <- [0..9]]
--  where f x = [digit*x | digit <- [0..9]]
