import Data.List

fibo :: Integer -> Integer -> [Integer]
fibo a b = a:fibo b (a+b)

fact :: Integer -> Integer
fact 0 = 1
fact a = a * fact(a-1)

removeLista :: ([a],[a]) -> [a]
removeLista a = (init(fst a)) ++ snd a

adicionaLista :: [a] -> ([a],[a]) -> [a]
adicionaLista n a = fst a ++ n ++ snd a

quicksort :: [Integer] -> [Integer]
quicksort [] = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

divideIp :: [Integer] -> ([Integer],[Integer])
divideIp xs = (filter odd xs, filter even xs)

juntaIp :: ([Integer],[Integer]) -> [Integer]
juntaIp tuple = fst tuple ++ snd tuple

fatorial :: Integer -> Integer
fatorial n
    | n < 0 = error "Não é válido número negativo"
    | n > 0 = fact n

fibonacciList :: Int -> [Integer]
fibonacciList n 
    | n < 0 = error "Não é válido número negativo"
    | n > 0 = take n (fibo 0 1)

fibonacci :: Int -> Integer
fibonacci n
    | n < 0 = error "Não é válido número negativo"
    | n > 0 = fibonacciList n !! (n-1)

remove :: Int -> [a] -> [a]
remove n xs = removeLista (splitAt (n-1) xs)

insere :: Integer -> Int -> [Integer] -> [Integer] 
insere x n xs = adicionaLista [x] (splitAt (n-1) xs)

separaImparPar :: [Integer] -> ([Integer],[Integer])
separaImparPar xs = divideIp (quicksort xs)

ordenaImparPar :: [Integer] -> [Integer]
ordenaImparPar xs = juntaIp (separaImparPar xs)

main = do
    print (fibonacci 5)
    print (fatorial 5)
    print (fibonacciList 4)
    print (remove 2 [5,4,3,2,1])
    print (insere 0 2 [5,4,3,2,1])
    print (separaImparPar [8,7,6,5,1,2,3,4])
    print (ordenaImparPar [8,7,6,5,1,2,3,4])