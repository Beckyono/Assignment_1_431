(*Author:   Rebecca Ostrander*)
(*Date:     9/20/24 - 9/22/24*)
(*Filename: A01ostranr.ml*)
(*Description: Assignment #1 for CS431, team 10, questions assigned to me -> 1, 2, 5, 8*)


(*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*)
(*Problem 1     Solution*)
(*Author        Rebecca Ostrander*)
(*1. a function that takes a list as argument, and that returns the value 1 if the list is empty,
 the value 2 if the list is of cardinality 1, and the value 0 if the list is of cardinality 2 or
 higher (hint: use pattern matching)*)

let cardinality list =
  match list with
  | [] -> 1          (*The list is empty*)
  | [_] -> 2         (*The list has one element*)
  | _ :: _ -> 0;;    (*The list has two or more elements*)

(*Testing*)
let x = [1; 3; 9;];;
cardinality x;;      (*returned 0*)
let y = [1;];;
cardinality y;;      (*returned 2*)
let z = [];;
cardinality z;;      (*returned 1*)


(*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*)
(*Problem 2     Solution*)
(*Author        Rebecca Ostrander*)
(*2. a function to rotate a list, removing the head element if any, and placing it at the end
 (hint: use pattern matching, and list concatenation @)*)

let rotate list=
  match list with
  | [] -> []                      (*The list is empty*)
  | h::t -> t @ [h];; (*Take the head of the list and append it to the tail*)

(*Testing*)
let x = [1; 3; 9;];;
rotate x;;                  (*returned [3; 9; 1]*)
let y = [1; 3; 9; 18; 6;];;
rotate y;;                  (*returned [3; 9; 18; 6; 1]*)
let z = [1;];;
rotate z;;                  (*returned [1]*)
let w = [];;
rotate w;;                  (*returned []*)


(*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*)
(*Problem 5     Solution*)
(*Author        Rebecca Ostrander*)
(*5. a function that counts how many 0 and 1 there are in a list of integers
 (hint: use pattern matching and recursion)*)

let rec counter list=
  match list with
  | [] -> (0, 0)  (*if the list is empty, return an empty value*)
  | h::t -> 
    let (numzeros, numones) = counter t in
    if h = 0 then      (*if the head is 0, increment numzeros*)
      (numzeros+1, numones)
    else if h = 1 then (*if the head is 1, increment numones*)
      (numzeros, numones+1)
    else               (*otherwise, do nothing*)
      (numzeros, numones);;

(*Testing*)
let x = [1; 5; 1; 6];;
let (zeros, ones) = counter x;; (*returned zeros = 0 and ones = 2*)
let y = [0; 5; 0; 6];;
let (zeros, ones) = counter y;; (*returned zeros = 2 and ones = 0*)
let z = [1; 5; 0; 6];;
let (zeros, ones) = counter z;; (*returned zeros = 1 and ones = 1*)
let w = [2; 5; 3; 6];;
let (zeros, ones) = counter w;; (*returned zeros = 0 and ones = 0*)
let a = [];;
let (zeros, ones) = counter a;; (*returned zeros = 0 and ones = 0*)
let b = [1;];;
let (zeros, ones) = counter b;; (*returned zeros = 0 and ones = 1*)
let c = [0;];;
let (zeros, ones) = counter c;; (*returned zeros = 1 and ones = 0*)


(*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*)
(*Problem 8     Solution*)
(*Author        Rebecca Ostrander*)
(*8. a function dup on lists that takes a list such as [a;b;c;d] as argument, and 
 produces [a;a;b;b;c;c;d;d] (hint: use pattern matching and recursion)*)

let rec duplicate list = 
  match list with
  | [] -> []                    (*if the list is empty, return an empty list*)
  | h::t -> h::h::duplicate t;; (*dupping the head appending it to the front -> calling the function on the tail*)

(*Testing*)
let x = ['a'; 'b'; 'c'; 'd';];;
duplicate x;;     (*returned ['a'; 'a'; 'b'; 'b'; 'c'; 'c'; 'd'; 'd']*)
let y = [];;
duplicate y;;     (*returned []*)
let z = ['a'];;
duplicate z;;     (*returned ['a'; 'a']*)