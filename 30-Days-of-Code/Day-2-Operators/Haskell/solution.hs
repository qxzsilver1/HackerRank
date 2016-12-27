import System.IO
import Data.Char
import Text.Printf

main = do
    mealInput <- getLine
    tipInput <- getLine
    taxInput <- getLine
    
    let mealCost = read mealInput :: Float
    let tipPercent = read tipInput :: Int
    let taxPercent = read taxInput :: Int
    
    let tip = mealCost * (fromIntegral tipPercent / 100.0)
    let tax = mealCost * (fromIntegral taxPercent / 100.0)
    
    let totalCost = mealCost + tip + tax
    
    let roundedTotalCost = round totalCost
    
    printf "The total meal cost is %d dollars." (roundedTotalCost :: Int)
