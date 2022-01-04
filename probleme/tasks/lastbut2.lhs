\begin{code}
lastbut2 (x:y:z:[]) = x
lastbut2 (x:y:z:zs) = lastbut2 (y:z:zs)
\end{code};
