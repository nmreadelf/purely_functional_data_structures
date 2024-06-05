isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' [] = True
isPalindrome' [x] = True
isPalindrome' (x:xs) = if x == last xs
                       then isPalindrome' (init xs)
                       else False

main :: IO ()
main = do
  print $ isPalindrome' [1, 2, 3, 2, 1]
  print $ isPalindrome' [1, 2, 3, 3, 2, 1]
  print $ isPalindrome' [1, 2, 3, 4, 5, 6]
  print $ isPalindrome' "madam"
  print $ isPalindrome' "maddam"
  print $ isPalindrome' "hello"
