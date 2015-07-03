-- Lab 4
-- Conor O'Neill

-- Append one list to end of another
myAppend :: [a] -> [a] -> [a]
myAppend [] [] = []
myAppend [] x = x
myAppend x [] = x
myAppend (x:xs) list = x : myAppend xs list

-- Return head of the list
myHead :: [a] -> a
myHead (x:_) = x

-- Return the last element of the list
myLast :: Eq a => [a] -> a
myLast [a] = a
myLast (x:xs) = if xs == [] then x else myLast xs

-- Return tail of the list
myTail :: [a] -> [a]
myTail [] = []
myTail (_:xs) = xs

-- Return all elements but the last one
myInit :: [a] -> [a]
myInit [] = []
myInit [a] = []
myInit (x:xs) = x : myInit xs

-- Return the length of the list
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

---- Reverse a list
myReverse :: [a] -> [a]
myReverse [] = []

myReverse (x:xs) = (myReverse xs) ++ [x]

---- Concat a list of lists together
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x:xs) = x ++ (myConcat xs)

-- Sum a list of Nums
mySum :: Num a => [a] -> a
mySum [] = 0
mySum (x:xs) = x + mySum xs

-- Multiply a list of Nums
myProduct :: Num a => [a] -> a
myProduct [] = 0
myProduct (x:xs) = x * mySum xs

myMaximum :: Ord a => [a] -> a
myMaximum [a] = a
myMaximum (x:xs) = if x > myMaximum xs then x else myMaximum xs

-- Return minimum element in a list
myMinimum :: Ord a => [a] -> a
myMinimum [a] = a
myMinimum (x:xs) = if x < myMinimum xs then x else myMinimum xs


-- Test whether a specified element is part of a list
myElem :: Ord a => a -> [a] -> Bool
myElem _ [] = False
myElem a (x:xs) = if (a == x) then True else myElem a xs