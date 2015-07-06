-- Simple I/O reading in a string
-- Conor O'Neill

readString :: IO()
readString = do
                putStrLn "What is your name?"
                name <- getLine
                putStrLn ("Welcome, " ++ name ++ "!")