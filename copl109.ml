f: 'a.'a->'a |- f (fun x -> x + 3) : int -> int by T-App{
  f: 'a.'a->'a |- f : (int -> int) -> (int -> int) by T-Var{};
  f: 'a.'a->'a |- fun x -> x + 3 : int -> int by T-Abs {
    f: 'a.'a->'a, x : int |- x + 3 : int by T-Plus{
      f: 'a.'a->'a, x : int |- x : int by T-Var{};
      f: 'a.'a->'a, x : int |- 3 : int by T-Int{}
    }
  }
}
