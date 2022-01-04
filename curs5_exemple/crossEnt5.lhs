\begin{code}
crossEnt5 ps qs = 
   foldr (+) 0
      (map (\ (p, q) -> (-1) * p * (logBase 2 q))
           (zip ps qs))
\end{code};
