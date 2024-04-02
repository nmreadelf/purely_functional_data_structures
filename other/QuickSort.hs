module QuickSort
( quickSort
, quickSort'
) where 

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let smallerSorted = quickSort [ a | a <- xs, a <= x ]
      biggerSorted  = quickSort [ a | a <- xs, a > x] 
  in smallerSorted ++ [x] ++ biggerSorted

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x       = x : filter' p xs
  | otherwise = filter p xs

quickSort' :: (Ord a) => [a] -> [a]
quickSort' [] = []
quickSort' (x:xs) =
  let smallerSorted = quickSort' (filter' (<=x) xs)
      biggerSorted  = quickSort' (filter' (>x) xs)
  in smallerSorted ++ [x] ++ biggerSorted
