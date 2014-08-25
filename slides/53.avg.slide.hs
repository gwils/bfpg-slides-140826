-- Solution: tuples of monoids

module Average where

import Data.Monoid

type Avg a = (Sum a, Sum Integer)

toAvg :: Double -> Avg Double
toAvg x = (Sum x, Sum 1)

getAvg :: Avg Double -> Double
getAvg (Sum p, Sum n) = p / fromIntegral n

average' :: [Double] -> Maybe Double
average' [] = Nothing
average' ds = Just . getAvg . mconcat . map toAvg $ ds

