-- How about numbers?
-- There are two possible instances!

-- Problem:
-- One type cannot have two instances for the same type-class!

-- Solution:
-- Newtypes

-- Sum monoid
newtype Sum a = Sum a
  deriving (Eq, Ord, Num, Show)

getSum :: Sum a -> a
getSum (Sum a) = a

instance Num a => Monoid (Sum a) where
  mempty  = Sum 0
  mappend = (+)

