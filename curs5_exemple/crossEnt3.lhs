\begin{code}
crossEnt3 ps qs = cea ps qs 0
   where
      cea [] [] a = a
      cea (p : ps) (q : qs) a = cea ps qs (a + (-1) * p * logBase 2 q)
\end{code};
