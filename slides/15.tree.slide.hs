-- So let’s generalize. We’ll need to pass as parameters the parts
-- of those examples which change from example to example:

-- 1. The return type
-- 2. The answer in the Empty case
-- 3. How to combine the recursive calls

-- We’ll call the type of data contained in the tree a, 
-- and the type of the result b.

treeFold :: b -> (b -> a -> b -> b) -> Tree a -> b
treeFold e _ Empty        = e
treeFold e f (Node l x r) = f (treeFold e f l) x (treeFold e f r)











-- {{{
data Tree a = Empty
            | Node (Tree a) a (Tree a)
  deriving (Show, Eq)

leaf :: a -> Tree a
leaf x = Node Empty x Empty

-- }}}

