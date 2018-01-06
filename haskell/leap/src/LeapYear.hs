module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year
 | divise 400 || (divise 4 && not (divise 100)) = True
 | otherwise = False 
 where divise divisible = mod year divisible == 0 

-- isLeapYear year = divisibleBy 400 || (divisibleBy 4 && not $ divisibleBy 100)
--    where
--        divisibleBy x = mod year x
