\begin{code}
q[] = []
q (x:xs) = q [s | s <- xs, s <= x] ++
           [x] ++
           q (filter (>x) xs)
\end{code};
