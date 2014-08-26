-- More monoid examples using newtypes

-- A monoid which stores the least element it has seen
newtype Min a = Min (Maybe a)
  deriving (Eq, Ord, Show)

getMin :: Min a -> Maybe a
getMin (Min m) = m

instance (Ord a) => Monoid (Min a) where
  mempty = Min Nothing
  mappend (Min Nothing)  b              = b
  mappend a              (Min Nothing)  = a
  mappend (Min (Just x)) (Min (Just y)) =
    Min (Just (min x y))











import Data.Monoid
