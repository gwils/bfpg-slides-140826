class Monoid m where
  mempty  :: m
  mappend :: m -> m -> m
  mconcat :: [m] -> m
  mconcat = foldr mappend mempty

(<>) :: Monoid m => m -> m -> m
(<>) = mappend

-- Laws:
-- 1. Left identity
leftIdProp :: (Eq m, Monoid m) => m -> Bool
leftIdProp x = (mempty <> x) == x
-- 2. Right identity
rightIdProp :: (Eq m, Monoid m) => m -> Bool
rightIdProp x = x == (x <> mempty)
-- 3. Associativity
assocProp :: (Eq m, Monoid m) => m -> m -> m -> Bool
assocProp x y z = (x <> (y <> z)) == ((x <> y) <> z)
      
-- The associativity law means that we can unambiguously write things like
-- a <> b <> c <> d <> e


