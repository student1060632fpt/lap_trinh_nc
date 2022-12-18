-- quick sort
f [] = []
f (x:xs) = f ys ++ [x] ++ f zs
  where
      ys = [a | a <- xs, a <= x]
      zs = [b | b <- xs, b > x]
a [] = [1..10]
last :: [a] -> a

