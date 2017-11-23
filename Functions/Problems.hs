module Problems where

problem1 :: a -> a
problem1 = undefined

problem2 :: a -> b -> a
problem2 = undefined

problem3 :: (a -> b) -> a -> b
problem3 = undefined

problem4 :: a -> b -> (a, b)
problem4 = undefined

problem5 :: (a, b) -> (b, a)
problem5 = undefined

problem6 :: (a -> b -> c) -> ((a,b) -> c)
problem6 = undefined

problem7 :: ((a,b) -> c) -> (a -> b -> c)
problem7 = undefined

problem8 :: (b -> c) -> (a -> b) -> (a -> c)
problem8 = undefined

problem9 :: (a -> b) -> (e -> a) -> (e -> b)
problem9 = undefined

problem10 :: (e -> a -> b) -> (e -> a) -> (e -> b)
problem10 = undefined

problem11 :: (e -> a) -> (a -> (e -> b)) -> (e -> b)
problem11 = undefined
