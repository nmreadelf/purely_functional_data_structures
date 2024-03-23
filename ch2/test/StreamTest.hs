module FactStream where

import Stream
import Test.Hspec

spec :: Spec
spec =
  describe "Stream" $ do
    context "Stream append' test" $ do
      it "append' test should be [1,2,3,4,5,6]" $ do
        Stream.append' [1,2,3] [4,5,6] `shouldBe` [1,2,3,4,5,6]

      it "append' test should be [1,2,3]" $ do
        Stream.append' [1,2,3] [] `shouldBe` [1,2,3]

      it "append' test should be [1,2,3]" $ do
        Stream.append' [] [1,2,3] `shouldBe` [1,2,3]

      it "append' test should be []" $ do
        Stream.append' [] [] `shouldBe` ([] :: [Int])

    context "Stream take' test" $ do
      it "take' test should be [1,2,3]" $ do
        Stream.take' 3 [1,2,3,4,5,6] `shouldBe` [1,2,3]

      it "take' test should be []" $ do
        Stream.take' 0 [1,2,3,4,5,6] `shouldBe` []

      it "take' test should be []" $ do
        Stream.take' 0 [] `shouldBe` ([] :: [Int])

    context "Stream drop' test" $ do
      it "drop' test shoule be []" $ do
        Stream.drop' 3 [1,2,3] `shouldBe` ([] :: [Int])

      it "drop' test shoule be []" $ do
        Stream.drop' 4 [1,2,3] `shouldBe` ([] :: [Int])

      it "drop' test shoule be [2,3]" $ do
        Stream.drop' 1 [1,2,3] `shouldBe` [2,3]

      it "drop' test shoule be [1,2,3]" $ do
        Stream.drop' 0 [1,2,3] `shouldBe` [1,2,3]

    context "Stream reverse' test" $ do
      it "reverse' test shoule be [3,2,1]" $ do
        Stream.reverse' [1,2,3] `shouldBe` [3,2,1]

      it "reverse' test shoule be []" $ do
        Stream.reverse' [] `shouldBe` ([] :: [Int])


main :: IO ()
main = hspec spec
