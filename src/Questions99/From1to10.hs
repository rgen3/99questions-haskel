{-# LANGUAGE MultiWayIf #-}

module Questions99.From1to10
    (
        task_1,
        task_1_v2,
        task_1_v3,
        task_1_v4,
        task_1_v5,
        task_1_v6,
        task_2_v1,
        task_2_v2,
        task_3_v1,
        task_3_v2,
        task_4_v1,
        task_4_v2,
        task_4_v3
    ) where


{-|
    (*) Find the last element of a list.
    (Note that the Lisp transcription of this problem is incorrect.)
    Example in Haskell:
    Prelude> myLast [1,2,3,4]
    4
    Prelude> myLast ['x','y','z']
    'z'
-}

task_1 l = last l

task_1_v2 l = head.reverse $ l

task_1_v3 l = l !! ((length l) - 1)

task_1_v4 l = if (length l) == 1
                then l
                else task_1_v4.tail $ l

task_1_v5 l = if
    | length l == 1 -> l
    | otherwise ->  task_1_v4.tail $ l

task_1_v6 l = case length l of
     1 -> l
     _ -> task_1_v5.tail $ l

{-
2 Problem 2
(*) Find the last but one element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

Prelude> myButLast [1,2,3,4]
3
Prelude> myButLast ['a'..'z']
'y'
-}

task_2_v1 l = l !! (length l - 2)

task_2_v2 l = if
    | length l == 2 -> head l
    | otherwise -> task_2_v2.tail $ l

{-
    3 Problem 3
    (*) Find the K'th element of a list. The first element in the list is number 1.

    Example:

    * (element-at '(a b c d e) 3)
    c
    Example in Haskell:

    Prelude> elementAt [1,2,3] 2
    2
    Prelude> elementAt "haskell" 5
    'e'
-}


task_3_v1 l num =  l !! num + 1

task_3_v2 l num = if
    | num == 0 -> head l
    | otherwise -> task_3_v2 (tail l) (num - 1)

{-
    4 Problem 4
    (*) Find the number of elements of a list.

    Example in Haskell:

    Prelude> myLength [123, 456, 789]
    3
    Prelude> myLength "Hello, world!"
    13
-}

task_4_v1 :: [a] -> Int
task_4_v1 l = length l

task_4_v2 :: [a] -> Int -> Int
task_4_v2 [] b = b
task_4_v2 a b = task_4_v2 (tail a) b+1

task_4_v3 b [] = b
task_4_v3 b (x:xs) = task_4_v3 (b+1) xs