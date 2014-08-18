-- More monoid examples using newtypes

newtype Max a = Max a
  deriving (Eq, Ord, Show)

getMax :: Max a -> a
getMax (Max a) = a

instance (Bounded a, Ord a) => Monoid (Max a) where
  mempty = Max minBound
  mappend (Max a) (Max b) = Max (max a b)


newtype Min a = Min a
  deriving (Eq, Ord, Show)

getMin :: Min a -> a
getMin (Min a) = a

instance (Bounded a, Ord a) => Monoid (Min a) where
  mempty = Min maxBound
  mappend (Min a) (Min b) = Min (min a b)


import Data.Monoid
