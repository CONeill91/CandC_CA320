-- Chap 5
-- List Comphension
-- Conor O'Neill

-- A positive integer is perfect if it equals the sum of all of its factors, excluding the number itself.
perfects :: Int -> [Int]
perfects x = [a | a <- [1..x], perfect a]

-- Whether a number is perfect or not
perfect :: Int -> Bool
perfect a = if a == sum(factors a) then True else False

-- Returns a list of all a given numbers factors, excluding itself
factors :: Int -> [Int]
factors x = [a | a <- [1..(x -1)], x `mod` a == 0]