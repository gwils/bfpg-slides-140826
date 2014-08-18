-- How about numbers?
-- There are two possible instances!

-- Sum monoid
instance Num a => Monoid a where
  mempty = 0
  mappend = (+)
-- Laws:
-- 0 + n == n
-- n + 0 == n
-- (x + y) + z == x + (y + z)

-- Product monoid
instance Num a => Monoid a where
  mempty = 1
  mappend = (*)
-- Laws:
-- 1 * n == n
-- n * 1 == n
-- (x * y) * z == x * (y * z)



