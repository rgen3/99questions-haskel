{-# LANGUAGE MultiWayIf #-}

module Questions99.From1to10
    (
        task_1,
        task_1_v2,
        task_1_v3,
        task_1_v4,
        task_1_v5,
        task_1_v6
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