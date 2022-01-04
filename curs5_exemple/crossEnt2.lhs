\begin{code}
crossEnt2 :: Floating t => [t] -> [t] -> t
crossEnt2 ps qs
   | null ps = 0
   | otherwise = (-1) * (head ps) * (logBase 2(head qs))
                 + crossEnt2 (tail ps) (tail qs)
\end{code};
