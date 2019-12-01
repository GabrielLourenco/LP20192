listaStrings :: String -> [String]
listaStrings []  = []
listaStrings xxs@(x:xs)  | x == ' ' = listaStrings xs
                    | otherwise = ys : listaStrings rest
                      where (ys, rest) = break (== ' ') xxs

reverteLista :: [a] -> [a]  
reverteLista [] = []  
reverteLista (x:xs) = reverteLista xs ++ [x]

listaToString :: [String] -> String
listaToString [] = ""
listaToString (x:xs) | xs == [] = x
                    | otherwise = x ++ " " ++ listaToString xs

inverterTexto :: String -> String
inverterTexto s = lis taToString . reverteLista . listaStrings $ s

main = do
  print(inverterTexto "gabriel é leirbag e lourenço é oçneruol")
