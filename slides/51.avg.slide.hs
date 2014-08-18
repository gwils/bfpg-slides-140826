-- Solution: pairs of monoids

avg :: Fractional a => (Product a, Sum a) -> a
avg (p,s) = getProduct p / getSum s

average' :: Fractional a => [a] -> a
average' = avg . mconcat . map (\x -> (Product x, Sum 1))

