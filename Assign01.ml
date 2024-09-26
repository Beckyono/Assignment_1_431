(*Brandon Fischer*)
(*HW 1-431*)
(*Problems 3 , 6 , 9 , 11 , 13*)


(*Problem 3:*)

let remove_last lst =
  match List.rev lst with
  | [] -> []  
  | _ :: [] -> []  
  | x :: xs -> List.rev xs  


(*Problem 6*)

let rec makepairs x lst =
  match lst with
  | [] -> []  (*Returns an empty list if the list is originally empty*)
  | a :: rest -> (x, a) :: makepairs x rest  (*If the list is not empty it recursively calls the function*)


(*Problem 9*)

let undup lst =
  let rec aux acc = function
    | [] -> List.rev acc  
    | (x1, x2) :: rest ->
        if x1 = x2 then
          aux acc rest  
        else
          aux ((x1, x2) :: acc) rest  
    | _ -> raise (Failure "bad input")  
  in
  match lst with
  | [] -> []  
  | (x1, x2) :: _ -> aux [] lst  


(*Problem 11*)
(*A*)
type float_tree = 
  | Empty
  | Node of float * float_tree * float_tree


(*B*)
let my_tree = 
  Node (1.0, 
    Node (2.0, 
      Node (4.0, Empty, Empty), 
      Node (5.0, Empty, Empty)
    ), 
    Node (3.0, 
      Node (6.0, Empty, Empty), 
      Node (7.0, Empty, Empty)
    )
  )


(*Problem 13*)
let rec count_leaves tree =
  match tree with
  | Empty -> 1  
  | Node (_, left, right) -> count_leaves left + count_leaves right

