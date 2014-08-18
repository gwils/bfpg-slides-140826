-- Case study: computing averages

average :: Fractional a => [a] -> a
average ns = sum ns / fromIntegral (length ns)

-- Problem: traverses the list twice; slow for very large lists

