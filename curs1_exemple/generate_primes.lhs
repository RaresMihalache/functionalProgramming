\begin{code}
pr (p:ns) = p:pr [n | n <- ns, n `mod` p > 0]
\end{code};
