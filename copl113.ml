|- let compose = fun f -> fun g -> fun x -> f (g x) in
   let f = fun x -> if x then 3 else 4 in
   let g = fun x -> x < 4 in
   compose f (compose g f) true : int by T-Let{
      |- fun f -> fun g -> fun x -> f (g x) : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b by T-Abs {
        f : 'a -> 'b |- fun g -> fun x -> f (g x) : ('c -> 'a) -> 'c -> 'b by T-Abs {
          f : 'a -> 'b, g : 'c -> 'a |- fun x -> f (g x) : 'c -> 'b by T-Abs{
            f : 'a -> 'b, g : 'c -> 'a, x : 'c |- f (g x) : 'b by T-App{
              f : 'a -> 'b, g : 'c -> 'a, x : 'c |- f : 'a -> 'b by T-Var{};
              f : 'a -> 'b, g : 'c -> 'a, x : 'c |- g x : 'a by T-App{
                f : 'a -> 'b, g : 'c -> 'a, x : 'c |- g : 'c -> 'a by T-Var{};
                f : 'a -> 'b, g : 'c -> 'a, x : 'c |- x : 'c by T-Var{}
              }
            }
          }
        }
      };
      compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b |- let f = fun x -> if x then 3 else 4 in
      let g = fun x -> x < 4 in compose f (compose g f) true : int by T-Let{
        compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b |- fun x -> if x then 3 else 4 : bool -> int by T-Abs{
          compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, x : bool |- if x then 3 else 4 : int by T-If{
            compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, x : bool |- x : bool by T-Var{};
            compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, x : bool |- 3 : int by T-Int{};
            compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, x : bool |- 4 : int by T-Int{}
          }
        };
        compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, f : bool -> int |- let g = fun x -> x < 4 in compose f (compose g f) true : int by T-Let{
          compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, f : bool -> int |- fun x -> x < 4 : int -> bool by T-Abs{
            compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, f : bool -> int, x : int |- x < 4 : bool by T-Lt{
              compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, f : bool -> int, x : int |- x : int by T-Var{};
              compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b, f : bool -> int, x : int |- 4 : int by T-Int{}
            }
          };
          compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- compose f (compose g f) true : int by T-App{
            compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- compose f (compose g f) : bool -> int by T-App{
              compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- compose f : (bool -> bool) -> bool -> int by T-App{
                compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- compose : ( bool -> int) -> (bool -> bool) -> bool -> int by T-Var{};
                compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- f : bool -> int by T-Var{}
              };
              compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- compose g f : bool -> bool by T-App{
                compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- compose g : (bool -> int) -> bool -> bool by T-App{
                  compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- compose : (int -> bool) -> (bool -> int) -> bool -> bool by T-Var{};
                  compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- g : int -> bool by T-Var{}
                };
                compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- f : bool -> int by T-Var{}
              }
            };
            compose : 'a 'b 'c.('a -> 'b) -> ('c -> 'a) -> 'c -> 'b , f : bool -> int, g : int -> bool |- true : bool by T-Bool{}
          }
        }
      }
   }
