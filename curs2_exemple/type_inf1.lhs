\begin{code}
type Vector = (Int, Int)
gcd4 :: Vector -> Int
gcd4 (m, n) = if m == 0 then n
              else gcd4 (n `mod` m, m)
\end{code};
