{-# LANGUAGE ImplicitParams #-}
{-# LANGUAGE RankNTypes #-}

module Lib where

foo :: Int -> ((?self :: Int) => Char) -> Char
foo x y = undefined

bar :: Int -> (Char -> Char)
bar x = ((let ?self = x in foo) :: Int -> Char -> Char) x

baz :: Int -> (Char -> Char)
baz x = let ?self = x in foo x
