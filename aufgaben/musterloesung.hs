import Data.List

-- Aufgabe 2

myMap :: (a -> b) -> [a] -> [b]
myMap f []   = []
myMap f (x:xs) = [f x] <> myMap f xs

-- alternaiv
myMap' :: (a -> b) -> [a] -> [b]
myMap' f xs = foldr (\ x -> (<>) [f x]) [] xs

-- alternaiv
myMap'' :: (a -> b) -> [a] -> [b]
myMap'' f = foldr (\ x -> (<>) [f x]) []






-- Aufgabe 3

sockPair :: [Int] -> Int
sockPair x = (sum . map (\v -> length v `div` 2 ) . group . sort) x

-- alternativ
sockPair' :: [Int] -> Int
sockPair' = sum . map (\v -> length v `div` 2 ) . group . sort






-- Aufgabe 4

-- 1
data Vector3 = Vector3 Int Int Int
  deriving (Show, Read)

-- 2
add :: (Vector3, Vector3) -> Vector3
add (Vector3 x1 x2 x3, Vector3 y1 y2 y3) = Vector3 (x1+y1) (x2+y2) (x3+y3)

getVector3s :: IO (Vector3, Vector3)
getVector3s = (\x -> read x :: (Vector3, Vector3)) <$> getLine

-- 3

main :: IO ()
main =  show . add <$> getVector3s >>= putStrLn

-- alternativ
main' :: IO ()
main' = getVector3s >>= putStrLn . show . add

-- alternativ
main'' :: IO ()
main'' = putStrLn . show . add =<< getVector3s

-- alternativ
main''' :: IO ()
main''' = getVector3s >>= \v ->  putStrLn (show (add v))
