|- let twice = fun f -> fun x -> f (f x) in
   twice (fun x -> x + 4) 5 : int by T-Let{
     |- fun f -> fun x -> f (f x) : ('c -> 'c) -> ('c -> 'c) by T-Abs{
       f : 'c -> 'c |- fun x -> f (f x) : 'c -> 'c by T-Abs{
         f : 'c -> 'c, x : 'c |- f (f x) : 'c by T-App{
           f : 'c -> 'c, x : 'c |- f : 'c -> 'c by T-Var {};
           f : 'c -> 'c, x : 'c |- f x : 'c by T-App{
             f : 'c -> 'c, x : 'c |- f : 'c -> 'c by T-Var{};
             f : 'c -> 'c, x : 'c |- x : 'c by T-Var{}
           };
         }
       }
     };
     twice : 'c. ('c -> 'c) -> ('c -> 'c) |- twice (fun x -> x + 4) 5 : int by T-App{
       twice : 'c. ('c -> 'c) -> ('c -> 'c) |- twice (fun x -> x + 4) : int -> int by T-App{
         twice : 'c. ('c -> 'c) -> ('c -> 'c) |- twice : (int -> int) -> int -> int by T-Var{};
         twice : 'c. ('c -> 'c) -> ('c -> 'c) |- fun x -> x + 4 : int -> int by T-Abs{
           twice : 'c. ('c -> 'c) -> ('c -> 'c), x : int |- x + 4 : int by T-Plus{
             twice : 'c. ('c -> 'c) -> ('c -> 'c), x : int |- x : int by T-Var{};
             twice : 'c. ('c -> 'c) -> ('c -> 'c), x : int |- 4 : int by T-Int{}
           }
         }
       };
       twice : 'c. ('c -> 'c) -> ('c -> 'c) |- 5 : int by T-Int{}
     }
   }
