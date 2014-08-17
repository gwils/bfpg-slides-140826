-- We’ve already seen how to define a folding function for lists…
-- but we can generalize the idea to other data types as well!

-- Consider the following data type of binary trees with data stored 
-- at internal nodes:

data Tree a = Empty
            | Node (Tree a) a (Tree a)
  deriving (Show, Eq)

leaf :: a -> Tree a
leaf x = Node Empty x Empty

