|- let f = fun x ->
             let g = fun y -> y x :: [] in g (fun z -> 4) in
   match f true with [] -> 3 :: [] | x :: y -> f x : int list by T-Let{
     |- fun x -> let g = fun y -> y x :: [] in g (fun z -> 4) : 'a  -> 'b list by T-Abs{

       x : 'a |- let g = fun y -> y x :: [] in g (fun z -> 4) : 'b list by T-Let{
         x : 'a |- fun y -> y x :: [] : 'b list by T-Abs{
           x : 'a, y : 'a -> 'b |- y x :: [] : 'b list by T-Cons{
             x : 'a, y : 'a -> 'b |- y x : 'b by T-App{
               x : 'a, y : 'a -> 'b |- y : 'a -> 'b by T-Var{};
               x : 'a, y : 'a -> 'b |- x : 'a by T-Var{}
             };
             x : 'a, y : 'a -> 'b |- [] : int list by T-Nil{}
           }
         };
         x : 'a, g : 'a 'b. ('a -> 'b) -> 'b list |- g (fun z -> 4) : 'b list by T-App{
           x : 'a, g : 'a 'b. ('a -> 'b) -> 'b list |- g : ('a -> 'b) -> 'b list by
         }
       }


     };
     f :  |- match f true with [] -> 3 :: [] | x :: y -> f x : int list by T-Match{

     }
   }
