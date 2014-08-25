-- How about numbers?
-- There are two possible instances!

-- Problem:
-- One type cannot have two instances for the same type-class!

-- Solution:
-- Newtypes (but what are newtypes?)

-- Product monoid
newtype Product a = Product a
  deriving (Eq, Ord, Num, Show)

getProduct :: Product a -> a
getProduct (Product a) = a

instance Num a => Monoid (Product a) where
  mempty  = Product 1
  mappend = (*)

