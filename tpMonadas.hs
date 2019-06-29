--import Data.Bits


-- inspirado en calculo de sumatoria de bits, teniendo en cuenta que trabajando pasando todo a bits fue un bardo
-- del lado derecho está la cantidad de bits necesarios en la que queda todo prendido
-- del lado izquierdo del igual se fija si no sobran chasquidos por sobre el total, y al compararlo con el ideal, se sabe si es true o false
resolver:: Int -> Int -> Bool
resolver n k =(mod k (2^n))==(2^n)-1

main = do
	casos <- readFile "Ruta aarchivo prueba"
	let linea = resolver (drop  1 (lines casos)) 1
	writeFile  "ruta de output" lineas 








