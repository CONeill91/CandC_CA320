-- Chap 5
-- List Comphension
-- Conor O'Neill

-- Question 1

-- A triple (x,y,z) of positive integers is called pythagorean if x2 + y2 = z2.
-- TODO - Remove Duplicates
pyths :: Int -> [(Int,Int,Int)]
pyths 0 = []
pyths x = [(a,b,c) | a <- [1..x], b <- [1..x], c <- [1..x], pyth (a, b, c) == True]

pyth :: (Int, Int, Int) -> Bool
pyth (a, b, c)
    | a ^ 2 + b ^ 2 == c ^ 2 = True
    | a ^ 2 + c ^ 2 == b ^ 2 = True
    | c ^ 2 + b ^ 2 == a ^ 2 = True
    | otherwise = False


-- Question 2

-- A positive integer is perfect if it equals the sum of all of its factors, excluding the number itself.
perfects :: Int -> [Int]
perfects x = [a | a <- [1..x], perfect a]

-- Whether a number is perfect or not
perfect :: Int -> Bool
perfect a = if a == sum(factors a) then True else False

-- Returns a list of all a given numbers factors, excluding itself
factors :: Int -> [Int]
factors x = [a | a <- [1..(x -1)], x `mod` a == 0]

