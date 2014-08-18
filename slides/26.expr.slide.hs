-- What can we fold other than trees and lists?

-- Recall the ExprT type and corresponding eval
-- function from Homework 5

data ExprT = Lit Integer
           | Add ExprT ExprT
           | Mul ExprT ExprT

eval :: ExprT -> Integer
-- {{{
eval (Lit i)     = i
eval (Add e1 e2) = eval e1 + eval e2
eval (Mul e1 e2) = eval e1 * eval e2
-- }}}

exprTFold :: (Integer -> b) -> (b -> b -> b) -> (b -> b -> b) -> ExprT -> b
-- {{{
exprTFold f _ _ (Lit i)     = f i
exprTFold f g h (Add e1 e2) = g (exprTFold f g h e1) (exprTFold f g h e2)
exprTFold f g h (Mul e1 e2) = h (exprTFold f g h e1) (exprTFold f g h e2)
-- }}}

eval' :: ExprT -> Integer
-- {{{
eval' = exprTFold id (+) (*)
-- }}}

-- We can write other useful functions on ExprT using exprTFold
numLiterals :: ExprT -> Int
numLiterals = exprTFold (const 1) (+) (+)




