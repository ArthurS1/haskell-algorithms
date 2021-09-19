module Main where

import Text.Read

data Tree a = Node a | Edge (Tree a, Tree a) 

main :: IO ()
main = (parse <$> getLine) >>= createTree >> (putStrLn "Hello World")

createTree :: [Maybe Int] -> IO (Maybe (Tree Int))
createTree l = pure (Just $ Node 1) :: IO (Maybe (Tree Int))

parse :: String -> [Maybe Int]
parse s = readMaybe <$> (words s) :: [Maybe Int]
