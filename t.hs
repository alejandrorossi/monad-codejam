

--main :: IO()
main = do
	casos <- readFile "alePuto.txt"
	putStrLn casos 