-- Lab 3
-- Conor O'Neill

-- Check if a list is a Palindrome
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome list = if list == reverse list then True else False

-- Given a list of lists, return the shortest one
shortestList :: [[a]] -> [a]
shortestList [] = []
shortestList [a] = a
shortestList (x:xs) = if length x > length xs then shortestList xs else x

-- Data Type Declaration
type Poly = [Float]

-- Adds two Polynomials
sumPoly :: Poly -> Poly -> Poly
sumPoly [] x = x
sumPoly x [] = x
sumPoly (x:xs) (y:ys) = (x + y):(sumPoly xs ys)


-- Evaluate a polynomial
evalpoly :: Poly -> [Float] -> Float
evalpoly _ [x] = x
evalpoly n (x:xs) = x * (evalpoly xs n)