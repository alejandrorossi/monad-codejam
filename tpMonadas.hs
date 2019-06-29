-- import Data.Bits
 import Data.Monoid

-- inspirado en calculo de sumatoria de bits, teniendo en cuenta que trabajando pasando todo a bits fue un bardo
-- del lado derecho está la cantidad de bits necesarios en la que queda todo prendido
-- del lado izquierdo del igual se fija si no sobran chasquidos por sobre el total, y al compararlo con el ideal, se sabe si es true o false
resolver:: Integer -> Integer -> String
resolver n k = 	if ((mod k (2^n))==(2^n)-1)
				then "ON"
				else "OFF"


	
	
main :: IO()
main = do
	casos <- readFile "A-small-practice.in"
	let lin = armarTexto (drop  1 (lines casos)) 1 --tiramos la primera que no sirve
	writeFile  "A-small-practice.out" lin 

armarTexto :: [String] -> Int -> String   
armarTexto (x:xs) n= "Case #"++(show n)++": " ++(agarrarParametros (words x))++"\n"++(armarTexto xs (n+1))
armarTexto [] _ = "" 



--TIPOS????
agarrarParametros (x:y:xs) = resolver x y


	





