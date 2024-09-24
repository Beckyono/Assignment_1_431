(*Author:   Kevin Ryan*)
(*Date:     9/20/24 - 9/24/24*)
(*Filename: Assign01.ml*)
(*Description: Assignment #1 for CS431, team 10, questions assigned to me -> 4, 7, 10, 12*)


(*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*)
(*Problem: 4    Solution*)
(*Author:      Kevin Ryan*)
(*4. a function to remove all occurrences of an element y from a list
 (hint: use pattern matching and recursion; if..else may be used too)*)
let rec remove_all y lst =
  match lst with
  | [] -> []
  | h::t -> if h = y then remove_all y t
            else h :: remove_all y t
;;


(*Problem: 7    Solution*)
(*Author:      Kevin Ryan*)
(* 7. a function to compute, without explicit factorials, the binomial coefficients 
 (hint: use pattern matching and recursion; use an appropriate formula for binomial
 coefficients; you need to use the recursive formula for binomial coefficients,
 from finite/discrete Math)*)
 let rec binomial n k =
  match (n, k) with
  | (_, 0) -> 1
  | (n, k) when n = k -> 1
  | (n, k) -> binomial (n-1) (k-1) + binomial (n-1) k
;;

(*Problem: 10    Solution*)
(*Author:      Kevin Ryan*)
(* 10. a function that finds the smallest element in a list
 (hint: use pattern matching and recursion; 
 raise (Failure "Empty list") if the list is empty;
 there is already a min function that computes the smaller of 2 numbers)*)
let rec find_min = function
  | [] -> raise (Failure "Empty list")
  | [x] -> x
  | h::t -> min h (find_min t)
;;

(*Problem: 12    Solution*)
(*Author:      Kevin Ryan*)
(*  12. a function that returns the depth (height) of a binary tree of floats, as defined in 11*)

type tree =
  | Empty
  | Node of float * tree * tree

let rec depth tree =
  match tree with
  | Empty -> 0
  | Node (_, left, right) ->
      1 + max (depth left) (depth right)