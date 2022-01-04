\begin{code}
data Optree = Operand Integer
            | Uniop String Optree
            | Binop String Optree Optree
          
-- make Optree showable
instance Show Optree where
   show = pTree 0
   
-- print tree with indentation level n
pTree :: Int -> Optree -> [Char]
pTree n (Operand i)   = indent n ++ (show i) ++ "_\n"
pTree n (Uniop v s)   = (pTree (length v + n + 2) s) ++
                      (indent n) ++
                      v ++
                      "\n"
pTree n (Binop v l r) = (pTree (length v + n + 2) l) ++
                        (pTree (length v + n + 2) r) ++
                        (indent n) ++
                        v ++
                        "\n"
-- generate a string of n spaces
indent n = [' ' | n <- [1..n] ]
           
-- wrapper
prettyPrintTree = printTree 0

-- print tree with indent level n
printTree :: Int -> Optree -> IO ()
printTree n (Operand i) = do
                          printIndent n
                          putStr $ show i
                          putStr "_\n"
printTree n (Uniop v s) = do
                          printTree (length v + n + 2) s
                          printIndent n
                          putStr v
                          putStr "\n"
printTree n (Binop v l r) = do
                            printTree (length v + n + 2) l
                            printTree (length v + n + 2) r
                            printIndent n
                            putStr v
                            putStr "\n"
-- print n spaces
printIndent n = putStr [' ' | n <- [1..n] ]

-- Test data
t1 = Binop "*"
           (Operand 2)
           (Operand 3)

t2 = Binop "+"
           (Operand 12)
           (Binop "*"
                  (Operand 3)
                  (Operand 4))
                  
t3 = Uniop "ln"
           (Binop "*"
                  (Operand 9)
                  (Operand 16)) 
\end{code};
