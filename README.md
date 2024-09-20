# Assignment_1_431
CS431 Assignment #1
Team #10: Rebecca Ostrander, Kevin Ryan, Brandon Fischer
Date: 9/20/24
Language: Ocaml
Questions:
1. a function that takes a list as argument, and that returns the value 1 if the list is empty,
   the value 2 if the list is of cardinality 1, and the value 0 if the list is of cardinality 2 or
   higher (hint: use pattern matching)

2. a function to rotate a list, removing the head element if any, and placing it at the end
   (hint: use pattern matching, and list concatenation @)
  
4. a function to remove the last element in a list, if any
   (hint: use pattern matching, and possibly the List.rev function that reverses a list)
  
5. a function to remove all occurrences of an element y from a list
   (hint: use pattern matching and recursion; if..else may be used too)

6. a function that counts how many 0 and 1 there are in a list of integers
   (hint: use pattern matching and recursion)
 
7. a function, called makepairs, that takes an int x and a list of ints [a;b;c;,…] as arguments,
   and that produces the list of pairs [ (x,a); (x,b); (x,c); ….]

8. a function to compute, without explicit factorials, the binomial coefficients 
   (hint: use pattern matching and recursion; use an appropriate formula for binomial
   coefficients; you need to use the recursive formula for binomial coefficients,
   from finite/discrete Math)

9. a function dup on lists that takes a list such as [a;b;c;d] as argument, and 
   produces [a;a;b;b;c;c;d;d] 
   (hint: use pattern matching and recursion)

10. a function undup that acts as the inverse of dup; the function should throw an exception
   if the argument given is not a list obtained by a dup 
   (hint: use pattern matching and recursion; a nested match may be used as well;
    recall that throwing an exception is just a matter of saying something like raise (Failure "bad input") )

12. a function that finds the smallest element in a list
   (hint: use pattern matching and recursion; raise (Failure "Empty list") if the list is empty;
    there is already a min function that computes the smaller of 2 numbers)
 
14. (a) a definition of the type of a binary tree of floats
    (b) the declaration of an actual binary tree of floats, of at least depth (height) 3
    
15. a function that returns the depth (height) of a binary tree of floats, as defined in 11.

16. a function that returns the number of leaf nodes in a binary tree of floats, as defined in 11
