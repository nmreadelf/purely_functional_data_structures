module FactQucikSort where

import QuickSort 
import Test.Hspec

spec :: Spec
spec =
  describe "QuickSort" $ do
      it "QuickSort' test should be [1,2,3,4,5,6]" $ do
        QuickSort.quickSort [6,5,4,3,2,1] `shouldBe` [1,2,3,4,5,6]

main :: IO ()
main = hspec spec
