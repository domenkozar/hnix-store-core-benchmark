module Main where

import qualified System.Nix.Nar as Nar
import qualified Data.ByteString.Lazy as BL
import           Data.Binary                 (put)
import           Data.Binary.Put             (Put (..), runPut)
import System.Environment (getArgs)

main :: IO ()
main = do
  [filename] <- getArgs
  nar <- Nar.localPackNar Nar.narEffectsIO filename
  BL.putStr . runPut . put $ nar
