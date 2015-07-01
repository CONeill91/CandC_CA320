-- Lab 2
-- Conor O'Neill

-- Area of a Triangle w/ error checking
triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c = if (isTriangle a b c)
                    then let s = (a + b + c ) / 2.0
                        in sqrt(s * (s - a) * (s - b) * (s - c))
                    else error "Not a valid triangle!"


-- Do two of the numbers add up to the third
isSum :: Int -> Int -> Int -> Bool
isSum a b c
    | a + b == c = True
    | a + c == b = True
    | b + c == a = True
    | otherwise = False


-- Checks if a Triangle is valid
isTriangle :: Float -> Float -> Float -> Bool
isTriangle a b c
    | x + y < z = False
    | x + z < y = False
    | y + z < x = False
    | otherwise = True