\begin{code}
type Set a = [a]
adElem :: Ord t => t -> Set t -> Set t
adElem e []                = [e]
adElem e (a:x) | e < a     = e:a:x
               | e == a    = a:x
               | otherwise = a:adElem e x
\end{code};
