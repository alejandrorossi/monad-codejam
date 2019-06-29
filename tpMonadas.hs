-- import Data.Bits
-- import Data.Monoid

-- inspirado en calculo de sumatoria de bits, teniendo en cuenta que trabajando pasando todo a bits fue un bardo
-- del lado derecho está la cantidad de bits necesarios en la que queda todo prendido
-- del lado izquierdo del igual se fija si no sobran chasquidos por sobre el total, y al compararlo con el ideal, se sabe si es true o false
resolver:: Int -> Int -> String
resolver n k = 	if (mod k (2^n))==(2^n)-1
				then "ON"
				else "OFF"

main = do
	casos <- readFile "Ruta aarchivo prueba"
	let linea = --recorrer de alguna forma loca haciendo obteniendo el n y el k 
	writeFile  "ruta de output" --escribir linea por linea con resolver
	
	
main :: IO()
main = do
	casos <- readFile "‪C:\Users\ale\Desktop\A-small-practice.in"
	let lin = armarTexto (drop  1 (lines casos)) 1
	writeFile  "‪C:\Users\ale\Desktop\respuesta.out" lin 

armarTexto :: [String] -> Int -> String   
armarTexto (y:xs) n= "Case #"++(show n)++": " ++(opl (words y))++"\n"++(armarTexto xs (n+1))
armarTexto [] _ = "" 



--opl (x:y:xs) = output $ solveCase ix iy
	--	where   
      --      ix = read x :: Int
        --    iy = read y :: Int
          --  output True = "ON"	
            --output False = "OFF"
	
	





