\begin{code}
prodl2 :: [Integer] -> Integer
prodl2 [] = 1
prodl2 [n] = n
prodl2 (n:ns) = n * prodl2 ns
\end{code};
