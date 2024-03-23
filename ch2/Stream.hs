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
take' 0 _ = []
take' _ [] = []
take' a (x:xs) = x : take' (a-1) xs

drop' :: Int -> [b] -> [b]
drop' 0 bs = bs
drop' _ [] = []
drop' a (x:xs) = drop' (a-1) xs

reverse' :: [b] -> [b]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
