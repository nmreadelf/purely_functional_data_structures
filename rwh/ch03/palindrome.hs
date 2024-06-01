palindrome' :: [a] -> [a]
palindrome' [] = []
palindrome' (x:xs) = [x] ++ palindrome' xs ++ [x]

main = interact lineCount
  where lineCount input = show (palindrome' [1..10] ) ++ "\n"
