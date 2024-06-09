import Data.List (sortBy)
import Data.Ord (comparing)

mySort :: [[a]] -> [[a]]
mySort xs = sortBy (comparing length) xs

main :: IO ()
main = do
  print $ mySort [[1], [2, 3], [4, 5, 6]]        -- [[1], [2,3], [4,5,6]]
  print $ mySort [[2, 3], [1], [2, 3], [4, 5, 6]] -- [[1], [2,3], [2,3], [4,5,6]]

