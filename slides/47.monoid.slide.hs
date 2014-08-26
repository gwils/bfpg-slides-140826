-- More monoid examples using newtypes

-- A monoid which stores the greatest element it has seen
newtype Max a = Max (Maybe a)
  deriving (Eq, Ord, Show)

getMax :: Max a -> Maybe a
getMax (Max m) = m

instance (Ord a) => Monoid (Max a) where
  mempty = Max Nothing
  mappend (Max Nothing)  b              = b
  mappend a              (Max Nothing)  = a
  mappend (Max (Just x)) (Max (Just y)) =
    Max (Just (max x y))











import Data.Monoid
