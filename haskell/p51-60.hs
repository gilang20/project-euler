-- Project Euler
import Data.List
import Data.Char

-- Problem 51

-- Problem 52
sosh x = sort $ show x

sameDig x =
    let xs = sosh x
    in  xs == sosh (2*x) && xs == sosh (3*x) && xs == sosh (4*x) && xs == sosh (5*x) && xs == sosh (6*x)

sol52 = head $ filter sameDig [1..]

main = print $ sol52