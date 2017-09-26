{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Test.Hspec
import Test.QuickCheck

import Problems

main :: IO ()
main = hspec $ do
  describe "addition" $ do
    it "problem 1" $
      property $ \(x :: Bool) ->
        (problem1 x) == (not x)

