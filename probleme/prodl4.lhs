\begin{code}
--using guards inside patterns
prodl4 :: [Integer] -> Integer
prodl4 []                 = 1
prodl4 (n:ns) | null ns   = n
             | otherwise = n * prodl4 ns
             
-- this implementation does not have a straightforward translation inside ML. NO patter guards
-- are available there.
\end{code};
