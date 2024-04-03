module FactQucikSort where

import BinaryTree
import Test.Hspec

spec :: Spec
spec =
  describe "BinaryTree" $ do
      it "BinaryTree elem test should be True" $ do
        BinaryTree.treeElem 1 (foldr BinaryTree.treeInsert EmptyTree [8,6,4,1,7,3,5]) `shouldBe` True

main :: IO ()
main = hspec spec
