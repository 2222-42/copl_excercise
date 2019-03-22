|- let rec map = fun f -> fun l ->
   match l with [] -> [] | x :: y -> f x :: map f y in
   let f = map (fun x -> x) in
   let a = f (3 :: []) in f (true :: []) : bool list by T-LetRec{
     map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a |- fun l -> match l with [] -> [] | x :: y -> f x :: map f y : 'a list -> 'a list by T-Abs{
       map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list |- match l with [] -> [] | x :: y -> f x :: map f y : 'a list by T-Match {
         map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list |- l : 'a list by T-Var{};
         map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list |- [] : 'a list by T-Nil{};
         map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- f x :: map f y : 'a list by T-Cons{
           map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- f x : 'a by T-App{
             map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- f : 'a -> 'a by T-Var{};
             map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- x : 'a by T-Var{}
           };
           map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- map f y : 'a list by T-App{
             map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- map f : 'a list -> 'a list by T-App{
               map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- map : ('a -> 'a) -> 'a list -> 'a list by T-Var{};
               map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- f : 'a -> 'a by T-Var{}
             };
             map : ('a -> 'a) -> 'a list -> 'a list, f : 'a -> 'a, l : 'a list, x : 'a, y : 'a list |- y : 'a list by T-Var{}
           }
         }
       }
     };
     map : 'a. ('a -> 'a) -> 'a list -> 'a list |- let f = map (fun x -> x) in let a = f (3 :: []) in f (true :: []) : bool list by T-Let{
       map : 'a. ('a -> 'a) -> 'a list -> 'a list |- map (fun x -> x) : 'b list -> 'b list by T-App{
         map : 'a. ('a -> 'a) -> 'a list -> 'a list |- map : ('b -> 'b) -> 'b list -> 'b list by T-Var{};
         map : 'a. ('a -> 'a) -> 'a list -> 'a list |- fun x -> x : 'b -> 'b by T-Abs{
           map : 'a. ('a -> 'a) -> 'a list -> 'a list, x : 'b |- x : 'b by T-Var{}
         }
       };
       map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list |- let a = f (3 :: []) in f (true :: []) : bool list by T-Let{
         map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list |- f (3 :: []) : int list by T-App{
           map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list |- f : int list -> int list by T-Var{};
           map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list |- 3 :: [] : int list by T-Cons{
             map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list |- 3 : int by T-Int{};
             map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list |- [] : int list by T-Nil{}
           }
         };
         map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list, a : int list |-  f (true :: []) : bool list by T-App{
           map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list, a : int list |- f : bool list -> bool list by T-Var{};
           map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list, a : int list |- true :: [] : bool list by T-Cons{
             map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list, a : int list |- true : bool by T-Bool{};
             map : 'a. ('a -> 'a) -> 'a list -> 'a list,  f : 'b. 'b list -> 'b list, a : int list |- [] : bool list by T-Nil{}
           }
         }
       }
     }
   }
