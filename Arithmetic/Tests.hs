{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import           Test.Hspec
import           Test.QuickCheck

import qualified Problems as P

main :: IO ()
main = hspec $ do
  describe "Problem 1" $ do
    it "should add two numbers" $
      property $ \(x :: Int, y :: Int) ->
        P.add x y == (x + y)

  describe "Problem 2" $
    it "should subtract two numbers" $
      property $ \(x :: Int, y :: Int) ->
        P.subtract x y == (x - y)

  describe "Problem 3" $
    it "should multiply two numbers" $
      property $ \(x :: Int, y :: Int) ->
        P.mult x y == (x * y)

  describe "Problem 4" $
    it "should perform integer division" $
      property $ \(x :: Int, y :: Int) ->
        P.division x y == (x `div` y)

  describe "Problem 5" $
    it "should perform modulus" $
      property $ \(x :: Int, y :: Int) ->
        P.modulus x y == (x `mod` y)
