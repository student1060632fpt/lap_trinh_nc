import Data.Bool (otherwise)
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome xs = xs == reverse xs

--isEven :: Eq(Integral a, Bool) => a -> Bool
isEven :: Integral a => a -> Bool
isEven x = if x `mod` 2 == 0 then True else False

--signum1 :: (Num a, Ord a) => a -> a
signum1 n | n < 0  = -1
          | n == 0 = 0
          | n > 0 = 1
			
xeploai 1 = 5
xeploai 2 = 7

sum1 [] = 0
sum1 (x:xs) = x + sum1 xs

-- sum2 sum the even elements in list
sum2 [] = 0
--sum2 (x:xs) | mod x 2 == 0 = x + sum2 xs
--            | otherwise = sum2 xs
sum2 (x:xs) = if mod x 2 == 0 then x + sum2 xs else sum2 xs

-- sum 3 and sum 4: sum the elements at even indexes of list
sum31 :: (Integral t, Num a) => [a] -> t -> a
sum31 [] _ = 0
sum31 (a:as) i = if even i then a + sum31 as (i+1) else sum31 as (i+1)

sum3 as = sum31 as 0

sum4 as = sum [x| (x,y) <- zip as [0..length as -1], even y]

pyths x = [(a,b,c) | a <- [1..x], b <- [1..x], c <- [1..x], a^2 + b^2==c^2]

perfect x = x == sum [a | a <- [1..x-1], x `mod` a == 0]
perfects x = [a | a <- [1..x], perfect a]

scalar_product :: (Num a, Enum a) => a -> a
scalar_product n = sum [ x*y | (x,y) <- zip [0..n-1] [0..n-1]]

is_leap_year year | mod year 400 == 0 = True
                  | mod year 100 == 0 = False
                  | mod year 4 == 0 = True
                  | otherwise = False
max_list [a] = a
max_list (a:as) | max_list as > a = max_list as
                | otherwise = a

min_list [a] = a
min_list (a:as) | min_list as < a = min_list as
                | otherwise = a
-- and_list [] = True
-- and_list (a:as) | as == True = True
--                 | otherwise = False

sum_list [] = 0
sum_list (a:as) = a + sum_list as

is_prime n | [x | x <- [1..n], mod n x == 0] == [1,n] = True
           | otherwise = False

------------------------------------------------------
-- Bài tập buổi 2 haskell 
-- 1. viết hàm kiểm tra số có phải số chính phương hay không 
-- 2. Viết hàm kiểm tra một số có chia hết cho một số khác không 
-- 3. viêt hàm kiểm tra một mảng có toàn bộ là số chính phương
------------------------------------------------------

-- bài 1 của mình 
is_square n = sq * sq == n
  where sq = floor $ sqrt $ (fromIntegral n::Double)
-- is_square 25

-- bài 1 của a tiến
isSquare x =  fromIntegral(round(sqrt(x))) == sqrt(x)



duplicate [] = []
duplicate (x:xs) = x : (x : (duplicate xs))

duplicate1 xs = foldr (\ x -> (++) [x,x]) [] xs

dropEvery1 xs n = dropEvery xs n 1

dropEvery :: (Eq t, Num t) => [a] -> t -> t -> [a]
dropEvery [] _ _ = []
dropEvery (x:xs) n i    | i== n = dropEvery xs n 1
                        | otherwise = x : dropEvery xs n (i+1) 


dropEvery2 [] _ = []
dropEvery2 (x:xs) 0 = xs
dropEvery2 (x:xs) n = x : dropEvery2 xs (n-1)

sqr a = a**2
sqrList :: Floating b => [b] -> [b]
sqrList (x:xs) = map sqr (x:xs)
sqrList1 (x:xs) = map (*2) (x:xs)

sumSqr (x:xs) = foldr (+) 0 (sqrList1 xs)