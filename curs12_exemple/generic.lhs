\begin{code}
inc :: Functor f => f Int -> f Int
inc = fmap (+1)
\end{code};
