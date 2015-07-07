-- Conor O'Neill
-- Recursive Questions - Chapter 6

-- Decide if all logical values in a list are true
myand :: [Bool] -> Bool
myand [] = True
myand (x:xs) = if x == True then myand xs else False

-- Concatenate a list of lists into one list
myconcat :: [[a]] -> [a]
myconcat [] = []
myconcat (x:xs) = x ++ (myconcat xs)

-- Replicate a supplied Int n times
myreplicate :: Int -> a -> [a]
myreplicate 0 _ = []
myreplicate n value = value : myreplicate (n - 1) value

-- Select the nTh element of a list TODO Finish
(!!) :: [a] -> Int -> a
(!!) [] _ = error "Empty List"
(!!) (x:xs) n =

-- Decide if an element is a member of a list
myElem :: (Eq a) => a -> [a] -> Bool
myElem _ [] = False
myElem a (x:xs) = if a == x then True else myElem a xs

-- Sort & merge two Int lists
merge :: Num a => [Int] -> [Int] -> [Int]
merge a [] = a
merge [] a = a
merge one two = qsort mergedList
                where mergedList = myconcat [one, two]

-- Quicksort algorithm using for sorting in the previous question
qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) =
        qsort smaller ++ [x] ++ qsort larger
        where
            smaller = [a | a <- xs, a <= x]
            larger = [b | b <- xs, b > x]

