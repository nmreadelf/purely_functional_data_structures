-- file: ch01/WC.hs
-- lines begging with "--" are comments.


main = interact wordCount
  where wordCount input = show (length (words input)) ++ "\n"
