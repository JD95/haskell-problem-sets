module Main where

import Test.Hspec

import Problems

main :: IO ()
main = hspec $ do
  describe "addition" $ do
    context "should always" $ do
      it "work" $
        (1 + 1) `shouldBe` (2 :: Int)
