module Main where

import qualified System.Nix.Nar as Nar
import qualified Data.ByteString.Lazy as BL
import           Data.Binary                 (put)
import           Data.Binary.Put             (Put (..), runPut)
import System.Environment (getArgs)
import System.IO (stdout)

main :: IO ()
main = do
  [filename] <- getArgs
  Nar.buildNarIO Nar.narEffectsIO filename stdout
