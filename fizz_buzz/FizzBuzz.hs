module Main where 

import Text.Read
import System.IO

main :: IO ()
main = (compute <$> getLine) >>= output 

output :: Maybe String -> IO () 
output (Just s) = hPutStrLn stdout s
output Nothing = hPutStrLn stderr "error"

compute :: String -> Maybe String
compute s = let fold = \i -> foldr fizzBuzz (Just []) i
            in unwords <$> (fold $ parse s)

parse :: String -> [Maybe Int]
parse s = map readMaybe $ words s :: [Maybe Int]

fizzBuzz :: Maybe Int -> Maybe [String] -> Maybe [String]
fizzBuzz (Just e) (Just acc)
    | mod e 3 == 0 = Just $ "Fizz":acc
    | mod e 5 == 0 = Just $ "Buzz":acc
    | mod e 5 == 0 && mod e 3 == 0 = Just $ "Fizz":"Buzz":acc
    | otherwise = Just $ show e:acc
fizzBuzz _ _ = Nothing
