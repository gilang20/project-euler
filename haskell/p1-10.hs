-- Project Euler
import Data.List
import Data.Char

-- Problem 1
sol1 = sum [ x | x <- [1..999], rem x 3 == 0 || rem x 5 == 0]


-- Problem 2
fibs a b = a : fibs b (a+b)

sol2 = sum . filter even . takeWhile (<= 4000000) $ fibs 1 1


-- Problem 3
isPrime x
    | x < 2 = False
    | x == 2 = True
    | even x = False
    | otherwise = null [ y | y <- [3,5..floor(sqrt(fromIntegral x))], rem x y == 0]

largestPrimeFactor x = iterReduce x 2

iterReduce x a
    | isPrime x = x
    | rem x a == 0 = iterReduce (div x a) a
    | otherwise = iterReduce x (a+1)

sol3 = largestPrimeFactor 600851475143


-- Problem 4
isPalindrom x = let strx = show x in strx == reverse strx

lop = sort [x*y | x <- [999,998..900], y <- [999,998..900], isPalindrom (x*y)]

sol4 = last lop


-- Problem 5
primeFactors x = iterFactor x 2

iterFactor x a
    | isPrime x = [x]
    | rem x a == 0 = a : iterFactor (div x a) a
    | otherwise = iterFactor x (a+1)

myUnion [] a = a
myUnion a [] = a
myUnion (x:xs) (y:ys)
    | x < y = x : myUnion xs (y:ys)
    | x > y = y : myUnion (x:xs) ys
    | otherwise = x : myUnion xs ys

iterUnion ls lim x
    | x > lim = ls
    | otherwise = iterUnion (myUnion ls (primeFactors x)) lim (x+1)

sol5 = product $ iterUnion [] 20 11


-- Problem 6
sol6 = abs $ sum (map (^2) [1..100]) - (sum [1..100])^2


-- Problem 7
sol7 = filter isPrime [2..] !!10000


-- Problem 8
str8 = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"

search0 str
    | str == [] = 14
    | last str == '0' = 25
    | otherwise = -1 + search0 (init str)

strReduced str
    | length str < 13 = []
    | otherwise = let cStr = take 13 str
                      nextDrop = search0 cStr
                  in if (nextDrop == 1) then cStr : strReduced (tail str) else strReduced $ drop nextDrop str

productString (x:xs) = if null xs then 1 else digitToInt x * productString xs

sol8 = maximum . map productString $ strReduced str8

-- Problem 9
isSquared x = x == (floor(sqrt(fromIntegral x)))^2

sqrti x = floor(sqrt(fromIntegral x))

sol9 = head [ a*b*sqrti (a^2+b^2) | a <- [103..997], b <- [104..998], a < b, a+b+(sqrti (a^2+b^2))== 1000, isSquared(a^2 + b^2)]


-- Problem 10
-- not efficient
sol10 = sum $ takeWhile (<2000000) (filter isPrime [1..])

main = print $ "put here"