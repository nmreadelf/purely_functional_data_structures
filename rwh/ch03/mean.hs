mean' :: [Int] -> Double
mean' (xs) = xsSum / xsSize
  where xsSize :: Double = fromIntegral (length xs)
        xsSum  :: Double = fromIntegral (sum xs)

main = interact lineCount
  where lineCount input = show (mean' [1..10] ) ++ "\n"
