\begin{code}
type Set a = [a]
card :: Set a -> Int
card s = length s

inSet :: Eq t => t -> Set t -> Bool
inSet e []                 = False
inSet e (x:xs) | e == x    = True
               | otherwise = inSet e xs  
\end{code};
