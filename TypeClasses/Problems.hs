module Problems where

import           Prelude (Bool, String, id)

data Maybe a = Just a | Nothing

data List a = Cons a (List a) | Nil

newtype State s a = State { runState :: s -> (s, a)}

class Show a where
  show :: a -> String

class Eq a where
  (==) :: a -> a -> Bool

class Semigroup a where
  (<>) :: a -> a -> a

class Semigroup m => Monoid m where
  mempty :: m

class Functor f where
  fmap :: (a -> b) -> f a -> f b

class Functor f => Applicative f where
  pure :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b

class Applicative f => Alternative f where
  empty :: f a
  (<|>) :: f a -> f a -> f a

class Applicative m => Monad m where

  (>>=) :: m a -> (a -> m b) -> m b
  ma >>= f = join (fmap f ma)

  join :: m (m a) -> m a
  join m = m >>= id
  {-# MINIMAL (>>=) | join #-}
