module Main where 

main :: IO () 
main = do
        input <- getLine
        putStrLn $ compute input

compute :: String -> String
compute s = let fold = \i -> foldr fizzBuzz [] i
            in unwords $ fold $ parse s

parse :: String -> [Int]
parse s = map read $ words s :: [Int]

fizzBuzz :: Int -> [String] -> [String]
fizzBuzz e acc
    | mod e 3 == 0 = "Fizz":acc
    | mod e 5 == 0 = "Buzz":acc
    | mod e 5 == 0 && mod e 3 == 0 = "Fizz":"Buzz":acc
    | otherwise = show e:acc
