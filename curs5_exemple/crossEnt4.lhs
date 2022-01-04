\begin{code}
crossEnt4 ps qs = 
   sum
      (map (\ (p, q) -> (-1) * p * (logBase 2 q))
           (zip ps qs))
\end{code};
