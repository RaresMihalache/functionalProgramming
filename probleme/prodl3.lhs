\begin{code}
prodl3 :: [Integer] -> Integer
prodl3 ns = case ns of
          [k] -> k
          (k:ks) -> k * prodl3 ks
          _ -> 1 -- any pattern
\end{code};
