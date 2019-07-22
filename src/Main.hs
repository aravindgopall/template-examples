{-# Language OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
module Main where

import Text.Mustache
import Text.Mustache.Compile
import Data.Either.Extra

main :: IO ()
main = temp


temp = do
     -- tempValue <- fromRight' <$> localAutomaticCompile "/Users/aravindmallapureddy/Desktop/code/juspAy/mou/temp.txt"
    let tempValue = [mustache| template {{ age }} is my age with {{ name }} is my name|]
    print $ checkedSubstitute tempValue defPerson

defPerson = Person { age = 10, nameN = "arav"}
data Person = Person { age :: Int, nameN :: String }

instance ToMustache Person where
  toMustache person = object
      [ "age" ~> age person
      , "nameN" ~> nameN person
      ]
