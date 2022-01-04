\begin{code}
type Vector = (Int, Int)
gcd3 (m, n) = if m == 0 then n
              else gcd3 (n `mod` m, m)
gcd3 :: Integral a => (a, a) -> a
\end{code};
