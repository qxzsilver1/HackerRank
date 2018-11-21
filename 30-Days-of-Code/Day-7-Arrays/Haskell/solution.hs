{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe



main :: IO()
main = do
    n <- readLn :: IO Int

    arrTemp <- getLine

    let arr = Data.List.map (read :: String -> Int) . words $ arrTemp

    let list_to_string = unwords . Data.List.map show

    putStrLn $ list_to_string $ reverse(arr)
