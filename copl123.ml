|- let f = fun x ->
             let g = fun y -> y x :: [] in g (fun z -> 4) in
   match f true with [] -> 3 :: [] | x :: y -> f x : int list by T-Let{
     |- fun x -> let g = fun y -> y x :: [] in g (fun z -> 4) : 'a -> ('a -> 'b) -> 'b list by T-Abs {
       x : 'a |- let g = fun y -> y x :: [] in g (fun z -> 4) : ('a -> 'b) -> 'b list by T-Let{
         x : 'a |- fun y -> y x :: [] : ('a -> 'b) -> 'b list by T-Abs{
           x : 'a, y : ('a -> 'b) |- y x :: [] : 'b list by T-Cons{
             x : 'a, y : ('a -> 'b) |- y x : 'b by T-App{
               x : 'a, y : ('a -> 'b) |- y : 'a -> int by T-Var{};
               x : 'a, y : ('a -> 'b) |- x : 'a by T-Var{}
             };
             x : 'a, y : ('a -> int) |- [] : int list by T-Nil{}
           }
         };
         x : 'a, g : 'a 'b. ('a -> 'b) -> 'b list |- g (fun z -> 4) : ('a -> 'b) -> 'b list by T-App{
           x : 'a, g : 'a 'b. ('a -> 'b) -> 'b list |- g : 'a -> ('a -> 'b) -> 'b list by
         }
       }
     };


     f : 'a. 'a -> ('a -> int) -> int list |- match f true with [] -> 3 :: [] | x :: y -> f x : int list by T-Match{
       f : 'a. 'a -> ('a -> int) -> int list |- f true : (bool -> int) -> int list by T-App{
         f : 'a. 'a -> ('a -> int) -> int list |- f : bool -> (bool -> int) -> int list by T-Var{};
         f : 'a. 'a -> ('a -> int) -> int list |- true : bool by T-Bool{}
       };
       f : 'a. 'a -> ('a -> int) -> int list |- [] : int list by T-Nil{};
       f : 'a. 'a -> ('a -> int) -> int list, x : 'a -> ('a -> int), y : ('a -> ('a -> int)) list |- f x : int list by T-App{
         f : 'a. 'a -> ('a -> int) -> int list, x : 'a -> ('a -> int), y : ('a -> ('a -> int)) list |- f : 'a -> ('a -> int) -> int list by T-Var{};
         f : 'a. 'a -> ('a -> int) -> int list, x : 'a -> ('a -> int), y : ('a -> ('a -> int)) list |- x : 'a -> ('a -> int) by T-Var{}
       }
     }
   }
