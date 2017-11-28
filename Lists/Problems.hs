module Problems where

import           Prelude ()

{- |

  Find the last element of a list

  eg. problem1 [1,2,3,4,5]
      5
-}
last :: [a] -> a
last xs = undefined

{- |

  Find the second to last element of a list

  eg. problem2 [1,2,3,4,5]
      4
-}
secondLast :: [a] -> a
secondLast xs = undefined

{- |

  Find the nth element of a list

  eg. nthElem [1,2,3,4,5] 0
      1

      nthElem [1,2,3,4,5] 4
      5

      nthElem [1,2,3,4,5] 2
      3
-}
nthElem :: [a] -> Int -> a
nthElem xs n = undefined

{- |

  Find the length of a list

  eg. length [1,2,3,4]
      4

      length [1]
      1

      length []
      0
-}
length :: [a] -> Int
length xs = undefined

{- |

  Reverse a list

  eg. reverse [1,2,3]
      [3,2,1]

      reverse []
      []
-}
reverse :: [a] -> [a]
reverse xs = undefined

{- |

  Determine if list is a palindrome

  eg. palindrome [1,2,3]
      false

      palindrome [1,2,3,3,2,1]
      true
-}
palindrome :: Eq a => [a] -> Bool
palindrome xs = undefined

{- |

  sum

  Add all numerical values in a list

  eg. sum [1,2,3,4]
      10
-}
sum :: Num a => [a] -> a
sum = undefined

{- |

  zip

  Given two lists, create a new list of pairs
  with the left value being from the first list
  and the  second value being from the second list.

  eg. zip [1,2,3,4] ['a', 'b', 'c', 'd']
      [(1, 'a'), (2, 'b'), (3, 'c'), (4, 'd')]
-}
zip :: [a] -> [b] -> [(a,b)]
zip = undefined

{- |

  zipWith

  Given a function of two values, and two lists,
  create a new list which is the result of the function
  using values from both lists.

  eg. zipWith (+) [1,2,3,4] [1,2,3,4]
      [2,4,6,8]
-}
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith = undefined
