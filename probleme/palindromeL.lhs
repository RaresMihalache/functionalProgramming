\begin{code}
-- take all but the last element in a list
myinit :: [a] -> [a]
myinit (y:[])   = []
myinit (x:y:ys) = x: myinit (y:ys)

-- test if a list is palindromic
palindrome []       = True
palindrome [x]      = True
palindrome (x: xs)  = x == (last xs) && palindrome (myinit xs)

-- test if a list is palindromic in letters
palindromeL xs = palindrome (elimSpaces (app_all xs))

-- concatenate all strings in a list
app_all []     = []
app_all (x:xs) = x ++ app_all xs

-- eliminate all spaces in a list
elimSpaces[]      = []
elimSpaces (x:xs) | x == ' '  = elimSpaces xs
                  | otherwise = x : elimSpaces xs
\end{code};
