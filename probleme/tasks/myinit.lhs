\begin{code}
myinit :: [a] -> [a]
myinit (y:[]) = []
myinit (x:y:ys) = x : myinit (y:ys)
\end{code};
