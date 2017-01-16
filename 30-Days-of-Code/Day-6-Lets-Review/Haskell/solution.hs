import Control.Applicative
import Control.Monad
import Data.List

main = do
    num <- read <$> getLine :: IO Int
    replicateM num $ do
        s <- getLine
        let [firstHalf, secondHalf] = map reverse $ strSplit s [] [] 0
        let output = intercalate " " [firstHalf, secondHalf]
        putStrLn output

strSplit [] first second i = [first, second]
strSplit (x:xs) first second i = if i `mod` 2 == 0
                  then strSplit xs (x:first)    second  (i+1)
                  else strSplit xs     first (x:second) (i+1)
