-- Solution: pairs of monoids

module Average where

import Data.Monoid

avg :: Fractional a => (Product a, Sum a) -> a
avg (p,s) = getProduct p / getSum s

average' :: Fractional a => [a] -> a
average' = avg . mconcat . map (\x -> (Product x, Sum 1))

