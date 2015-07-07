-- Higher Order Functions Exercises
-- Conor O'Neill

-- Map Function List Comp Impl
myMapLC :: (a -> b) -> [a] -> [b]
myMapLC f xs = [f x | x <- xs]

-- Map Function List Recusive Impl
myMapRec :: (a -> b) -> [a] -> [b]
myMapRec f [] = []
myMapRec f (x:xs) = f x : myMapRec f xs

-- Filter Function List Comp Impl
myFilterLC :: (a -> Bool) -> [a] -> [a]
myFilterLC f xs = [x | x <- xs, f x]

-- Filter Function Recusive Impl
myFilterRec :: (a -> Bool) -> [a] -> [a]
myFilterRec f [] = []
myFilterRec f (x:xs)
                | f x = x : myFilterRec f xs
                | otherwise = myFilterRec f xs

-- Foldr Function Recursive Impl
myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f v [] = v
myFoldr f v (x:xs) = f x (myFoldr f v xs)
