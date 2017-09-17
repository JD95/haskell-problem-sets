{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Test.Hspec
import Test.QuickCheck
import Control.Arrow

import Problems

main :: IO ()
main = hspec $ do
  describe "Problem 1" $ do
    it "should get last element" $
    property $ \(x :: [Int]) ->
        problem1 x == last x
        
  describe "Problem 2" $ do
    it "should get the second to last element" $
      property $ \(x :: [Int]) ->
        problem2 x == (last . init $ x)

  describe "Problem 3" $ do
    it "should get the nth element" $
      property $ \(x :: [Int]) (n :: Int) ->
        problem3 x n == (x !! n)

  describe "Problem 4" $ do
    it "should calculate the length of the list" $
      property $ \(x :: [Int]) ->
        problem4 x == length x

  describe "Problem 5" $ do
    it "should reverse the list" $
      property $ \(x :: [Int]) ->
        problem5 x == reverse x

  describe "Problem 6" $ do
    it "should find valid palindromes" $
      property $ \(x :: Int) (isPal :: Bool) ->
        let list = [1..x]
            pal  = if isPal then list ++ reverse list else list
        in  problem6 pal == isPal 
