-- Solution: tuples of monoids

module Average where

import Data.Monoid

type Avg a = (Sum a, Sum Integer)

toAvg :: Floating a => a -> Avg a
toAvg x = (Sum x, Sum 1)

getAvg :: Floating a => Avg a -> a
getAvg (Sum p, Sum n) = p / fromIntegral n

