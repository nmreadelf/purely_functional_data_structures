module Stream
( append'
, take'
, drop'
, reverse'
) where 

append' :: [b] -> [b] -> [b]
append' [] [] = []
append' bs [] = bs
append' [] bs = bs
append' (x:xs) bs = x : append' xs bs

take' :: Int -> [b] -> [b]
take' n _
  | n <= 0 = []
take' _ [] = []
take' a (x:xs) = x : take' (a-1) xs

drop' :: Int -> [b] -> [b]
drop' n [b]
  | n <= 0 = [b]
drop' _ [] = []
drop' a (x:xs) 
  | a <= 0 = x:xs
  | otherwise = drop' (a-1) xs

reverse' :: [b] -> [b]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
