p = [t | t <- [1..], isPrime t]
  where
    isPrime :: Integer -> Bool
    isPrime 1 = False
    isPrime n = (\x -> n `mod` x /= 0) `all` [2..n-1]
