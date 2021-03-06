class Monoid m where
  mempty  :: m
  mappend :: m -> m -> m
  mconcat :: [m] -> m
  mconcat = foldr mappend mempty

(<>) :: Monoid m => m -> m -> m
(<>) = mappend

