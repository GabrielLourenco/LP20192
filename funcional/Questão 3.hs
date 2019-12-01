listaStrings :: String -> [String]
listaStrings []  = []
listaStrings xxs@(x:xs)  | x == '\n' = listaStrings xs
                    | otherwise = ys : listaStrings rest
                      where (ys, rest) = break (== '\n') xxs

reverteLista :: [a] -> [a]  
reverteLista [] = []  
reverteLista (x:xs) = reverteLista xs ++ [x]

inverteTexto :: String -> [String]
inverteTexto x = reverteLista . listaStrings $ x

printListLines :: [String] -> IO()
printListLines [] = return ()
printListLines (x:xs) = do  putStrLn x
                            printListLines xs

main = do
  printListLines(inverteTexto "Nao te amo mais.\nEstarei mentindo dizendo que\nAinda te quero como sempre quis.\nTenho certeza que\nNada foi em vao.\nSinto dentro de mim que\nVoce nao significa nada.\nNao poderia dizer jamais que\nAlimento um grande amor.\nSinto cada vez mais que\nJa te esqueci!\nE jamais usarei a frase:\nEU TE AMO!\nSinto, mas tenho que dizer a verdade\nE tarde demais...")