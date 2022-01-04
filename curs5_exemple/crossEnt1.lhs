\begin{code}
crossEnt1 :: Floating t => [t] -> [t] -> t
crossEnt1 ps qs = 
   if (null ps) then 0
   else ((-1) * (head ps) * (logBase 2 (head qs))
        + crossEnt1 (tail ps) (tail qs))
\end{code};
