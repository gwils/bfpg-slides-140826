-- Lists form a monoid
module Data.Monoid.List where

import Data.Monoid (Monoid (..))

instance Monoid [a] where
  mempty  = []
  mappend = (++)

-- Laws:
-- Left identity
-- [] ++ x  == x
-- Right identity
-- x  ++ [] == x
-- Associativity
-- (x ++ y) ++ z == x ++ (y ++ z)

