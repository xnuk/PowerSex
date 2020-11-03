#!/usr/bin/env runhaskell
> {-# OPTIONS_GHC -Wall -Wno-missing-signatures #-}

Even Fibonacci numbers

Problem
-------
Each new term in the Fibonacci sequence is generated by adding the previous
two terms. By starting with 1 and 2, the first 10 terms will be:

    1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not
exceed four million, find the sum of the even-valued terms.


Solution
--------
Well actually 4,000,000 isn't that big, so we can just calculate it.

> fibonacci :: [Integer]
> fibonacci = 1:2:zipWith (+) fibonacci (tail fibonacci)
> answer = sum . filter even $ takeWhile (<4000000) fibonacci

> main = print answer