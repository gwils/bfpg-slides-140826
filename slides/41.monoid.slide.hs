-------------
-- Monoids --
-------------

class Monoid m where
  mempty  :: m
  mappend :: m -> m -> m
  mconcat :: [m] -> m
  mconcat = foldr mappend mempty

(<>) :: Monoid m => m -> m -> m
(<>) = mappend

-- Laws:
-- 1. Left identity
--    mempty <> x == x
-- 2. Right identity
--    x <> mempty == x
-- 3. Associativity
--    (x <> y) <> z == x <> (y <> z)
      
-- The associativity law means that we can unambiguously write things like
-- a <> b <> c <> d <> e


