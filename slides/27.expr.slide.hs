-- What can we fold other than trees and lists?

-- Recall the ExprT type and corresponding eval
-- function from Homework 5

data ExprT = Lit Integer
           | Add ExprT ExprT
           | Mul ExprT ExprT

exprTFold :: (Integer -> b) -> (b -> b -> b) -> (b -> b -> b) -> ExprT -> b
-- {{{
exprTFold f _ _ (Lit i)     = f i
exprTFold f g h (Add e1 e2) = g (exprTFold f g h e1) (exprTFold f g h e2)
exprTFold f g h (Mul e1 e2) = h (exprTFold f g h e1) (exprTFold f g h e2)
-- }}}

-- We can write ExprT rewrite rules as folds
rewrite :: ExprT -> ExprT
rewrite = exprTFold Lit addrw mulrw
  where addrw (Lit 0) x       = x
        addrw x       (Lit 0) = x
        addrw x       y       = Add x y
        mulrw (Lit 0) _       = Lit 0
        mulrw _       (Lit 0) = Lit 0
        mulrw (Lit 1) x       = x
        mulrw x       (Lit 1) = x
        mulrw x       y       = Mul x y
