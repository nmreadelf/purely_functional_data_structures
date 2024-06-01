length' :: [a] -> Int
length' (x:xs) = 1 + length' xs
length' _ = 0

main = interact lineCount
  where lineCount input = show (length' $ lines input) ++ "\n"
