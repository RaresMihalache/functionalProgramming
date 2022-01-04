\begin{code}
instance Functor ((->) a) where
-- fmap :: (b->c) -> (a->b) -> (a->c)
fmap g h = g . h
\end{code};
