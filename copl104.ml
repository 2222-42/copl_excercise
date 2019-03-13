|- let rec append = fun l1 -> fun l2 ->
     match l1 with [] -> l2 | x :: y -> x :: append y l2 in
     append : int list -> int list -> int list by T-LetRec{
       append : int list -> int list -> int list, l1 : int list |- fun l2 ->
          match l1 with [] -> l2 | x :: y -> x :: append y l2 : by {};
       append : int list -> int list -> int list |- append : int list -> int list -> int list by T-Var{}
     }
