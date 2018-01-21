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
        last' x == last x

  describe "Problem 2" $ do
    it "should get the second to last element" $
      property $ \(x :: [Int]) ->
        secondLast' x == (last . init $ x)

  describe "Problem 3" $ do
    it "should get the nth element" $
      property $ \(x :: [Int]) (n :: Int) ->
        nthElem x n == (x !! n)

  describe "Problem 4" $ do
    it "should calculate the length of the list" $
      property $ \(x :: [Int]) ->
        length' x == length x

  describe "Problem 5" $ do
    it "should reverse the list" $
      property $ \(x :: [Int]) ->
        reverse' x == reverse x

  describe "Problem 6" $ do
    it "should find valid palindromes" $
      property $ \(x :: Int) (isPal :: Bool) ->
        let list = [1..x]
            pal  = if isPal then list ++ reverse list else list
        in  palindrome pal == isPal

  describe "Problem 7" $ do
    it "should sum the list" $
      property $ \(x :: [Int]) ->
        sum' x == sum x

  describe "Problem 8" $ do
    it "should zip two lists" $
      property $ \(x :: [Int], y :: [Int]) ->
        zip' x y == zip x y

  describe "Problem 9" $ do
    it "should zip with the provided function" $
      property $ \(xs :: [Int]) ->
        let xs' = zipWith' (+) xs xs
        in all id $ zipWith (\x x' -> x' == x + x) xs xs'
