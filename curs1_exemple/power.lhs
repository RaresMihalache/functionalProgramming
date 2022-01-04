\begin{code}
power m n = if (m==0) then 0 -- what if n == 0
            else if n==0 then 1
            else m * (power m (n-1))
\end{code};
