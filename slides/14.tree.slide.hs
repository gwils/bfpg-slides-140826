-- Let’s write a function to compute the size of a tree
-- (i.e. the number of Nodes):

treeSize :: Tree a -> Integer
treeSize Empty        = 0
treeSize (Node l _ r) = 1 + treeSize l + treeSize r

-- How about the sum of the data in a tree of Integers?
treeSum :: Tree Integer -> Integer
treeSum Empty        = 0
treeSum (Node l x r) = x + treeSum l + treeSum r

-- Or the depth of a tree?
treeDepth :: Tree a -> Integer
treeDepth Empty        = 0
treeDepth (Node l _ r) = 1 + max (treeDepth l) (treeDepth r)

-- Or flattening the elements of the tree into a list?
flatten :: Tree a -> [a]
flatten Empty        = []
flatten (Node l x r) = flatten l ++ [x] ++ flatten r



-- {{{
data Tree a = Empty
            | Node (Tree a) a (Tree a)
  deriving (Show, Eq)

leaf :: a -> Tree a
leaf x = Node Empty x Empty

-- }}}

