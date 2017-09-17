module Problems where

{- Problem 1: Find the last element of a list
   eg. problem1 [1,2,3,4,5]
       5
-}
problem1 :: [a] -> a
problem1 xs = undefined

{- Problem 2: Find the second to last element of a list
   eg. problem2 [1,2,3,4,5]
       4
-}
problem2 :: [a] -> a
problem2 xs = undefined

{- Problem 3: Find the nth element of a list
   eg. problem3 [1,2,3,4,5] 0
       1

       problem3 [1,2,3,4,5] 4
       5

       problem3 [1,2,3,4,5] 2
       3
-}
problem3 :: [a] -> Int -> a
problem3 xs n = undefined

{- Problem 4: Find the length of a list
   eg. problem4 [1,2,3,4]
       4

       problem4 [1]
       1

       problem4 []
       0
-}
problem4 :: [a] -> Int
problem4 xs = undefined

{- Problem 5: Reverse a list
   eg. problem5 [1,2,3]
       [3,2,1]

       problem5 []
       []
-}
problem5 :: [a] -> [a]
problem5 xs = undefined

{- Problem 6: Determine if list is a palindrome
   eg. problem6 [1,2,3]
       false

       problem6 [1,2,3,3,2,1]
       true
-}
problem6 :: Eq a => [a] -> Bool
problem6 xs = undefined
