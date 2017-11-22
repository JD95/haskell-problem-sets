{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import           Test.Hspec
import           Test.QuickCheck

import           Problems

main :: IO ()
main = hspec $ do
  describe "Problem 1" $ do
    it "should add two numbers" $
      property $ \(x :: Int, y :: Int) ->
        problem1 x y == (x + y)

  describe "Problem 2" $
    it "should subtract two numbers" $
      property $ \(x :: Int, y :: Int) ->
        problem2 x y == (x - y)

  describe "Problem 3" $
    it "should multiply two numbers" $
      property $ \(x :: Int, y :: Int) ->
        problem3 x y == (x * y)

  describe "Problem 4" $
    it "should perform integer division" $
      property $ \(x :: Int, y :: Int) ->
        problem4 x y == (x `div` y)
