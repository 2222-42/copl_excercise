|- let rec map = fun f -> fun l ->
   match l with [] -> [] | x :: y -> f x :: map f y in
   map (fun x -> x < 3) (map (fun x -> x * 2) (4 :: 5 :: 1 :: [])) : bool list by T-LetRec{
     map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b |- fun l -> match l with [] -> [] | x :: y -> f x :: map f y : 'c list -> 'b list by T-Abs {
          map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list |- match l with [] -> [] | x :: y -> f x :: map f y : 'b list by T-Match{
               map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list |- l : 'c list by T-Var{};
               map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list |- [] : 'c list by T-Nil{};
               map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- f x :: map f y : 'b list by T-Cons{
                 map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- f x : 'b by T-App{
                   map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- f : 'a -> 'b by T-Var{};
                   map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- x : 'a by T-Var{}
                 };
                 map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- map f y : 'b list by T-App{
                   map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- map f : 'c list -> 'b list by T-App{
                     map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- map : ('a -> 'b) -> 'c list -> 'b list by T-Var {};
                     map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- f : 'a -> 'b by T-Var{}
                   };
                   map : ('a -> 'b) -> 'c list -> 'b list, f : 'a -> 'b, l : 'c list, x : 'a, y : 'c list |- y : 'c list by T-Var{}
                 }
               }
             }
        };
    map : 'a 'b 'c. ('a -> 'b) -> 'c list -> 'b list |-  map (fun x -> x < 3) (map (fun x -> x * 2) (4 :: 5 :: 1 :: [])) : bool list by T-App{

    }
   }
