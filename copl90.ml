|- fun x -> fun y -> x : int -> int -> int by T-Fun{
  x : int |- fun y -> x : int -> int by T-Fun{
    x : int, y : int |- x :int by T-Var{}
  }
}
