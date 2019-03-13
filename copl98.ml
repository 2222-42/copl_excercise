|- let s = fun f -> fun g -> fun x -> f x (g x) in
   let k1 = fun x -> fun y -> x in
   let k2 = fun x -> fun y -> x in
   s k1 k2 (fun x -> x + 1) : int -> int by T-Let 
