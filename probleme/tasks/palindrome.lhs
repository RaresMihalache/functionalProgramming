\begin{code}
-- take all but the last element in a list
myinit :: [a] -> [a]
myinit (y:[]) = []
myinit (x:y:ys) = x : myinit (y:ys)


-- test if a list is palindromic
palindrome [] = True
palindrome [x] = True
palindrome (x:xs) = x == (last xs) && palindrome (myinit xs)
\end{code};
