-- Lab 5
-- Conor O'Neill

-- Binary Tree Definition
data Bintree t = Empty | Node t (Bintree t) (Bintree t)
        deriving (Ord, Show, Eq)

-- Add an element in it's correct position
addnode :: (Ord a) => a -> Bintree a -> Bintree a
addnode x Empty = Node x Empty Empty
addnode x (Node n left right)
    | x == n = Node n left right
    | x < n = Node n (addnode x left) right
    | x > n = Node n left (addnode x right)

-- Make a bintree from a given list
maketree :: (Ord a) => [a] -> Bintree a
maketree [] = Empty
maketree [x] = Node x Empty Empty
maketree (x:xs) = addnode x (maketree xs)

-- Traverse a tree inorder
inorder :: Bintree a -> [a]
inorder Empty = []
inorder (Node n left right) = inorder left ++ [n] ++ inorder right

-- Mergesort
mpsort :: [Int] -> [Int]
mpsort x = inorder (makeTree x)