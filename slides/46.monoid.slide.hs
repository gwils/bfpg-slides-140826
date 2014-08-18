-- Note that to find, say, the product of a list of Integers using mconcat,
-- we have to first turn them into values of type Product Integer:

lst :: [Integer]
lst = [1,5,8,23,423,99]

prod :: Integer
prod = getProduct . mconcat . map Product $ lst

--(Of course, this particular example is silly, since we could use the 
-- standard product function instead, but this pattern does come in 
-- handy somtimes.)

