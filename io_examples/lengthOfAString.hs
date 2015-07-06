-- Simple IO Program which takes in a string and prints it's length
-- Conor O'Neill

strlen :: IO()
strlen = do
            putStr "Enter a String: "
            xs <- getLine
            putStr "The string has "
            putStr (show(length xs))
            putStrLn " characters."