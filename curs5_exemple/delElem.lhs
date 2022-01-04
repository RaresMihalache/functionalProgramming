\begin{code}
type Set a = [a]
delElem :: Ord t => t -> Set t -> Set t
delElem e []                = []
delElem e (a:x) | e < a     = a:x
                | e == a    = x
                | otherwise = a:delElem e x
\end{code};
