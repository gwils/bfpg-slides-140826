-- Case study: 
-- let's say we want to compute the average (mean) value 
-- of a list of values

module Average where

average :: [Double] -> Maybe Double
average [] = Nothing
average ns =
  let len = length ns
  in Just (sum ns / fromIntegral len)

-- Problem: traverses the list twice;
-- slow for very large lists

