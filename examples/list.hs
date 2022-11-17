module ListBeispiel where

import Data.List
import Data.Ord

test :: [String] -> [String]
test = sortBy (comparing length <> compare)
