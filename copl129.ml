3 + (if -3 < -2 * 8 then 8 else 2) + 4 evalto 9 by E-BinOp{
  3 >> {_ + (if -3 < -2 * 8 then 8 else 2) + 4} evalto 9 by E-Int{
    3 => {_ + (if -3 < -2 * 8 then 8 else 2) + 4} evalto 9 by C-EvalR{
      (if -3 < -2 * 8 then 8 else 2) + 4 >> {3 + _} evalto 9 by E-BinOp{
        if -3 < -2 * 8 then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by E-If{
          -3 < -2 * 8 >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by E-BinOp{
            -3 >> _ < -2 * 8 >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by E-Int{
              -3 => _ < -2 * 8 >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by C-EvalR{
                -2 * 8 >> 3 < _ >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by E-BinOp{
                  -2 >> _ * 8 >> 3 < _ >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by E-Int{
                    -2 => _ * 8 >> 3 < _ >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by C-EvalR{
                      8 >> -2 * _ >> 3 < _ >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by E-Int{
                        8 => -2 * _ >> 3 < _ >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by C-Times{
                          -2 times 8 is -16 by B-Times{};
                            -16 => 3 < _ >> if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9 by C-Lt{
                              3 less than -16 is false by B-Lt{};
                                false => if _ then 8 else 2 >> {_ + 4} >> {3 + _} evalto 9  by C-IfF{
                                  2 >> {_ + 4} >> {3 + _} evalto 9 by E-Int{
                                    2 => {_ + 4} >> {3 + _} evalto 9 by C-EvalR{
                                      4 >> {2 + _} >> {3 + _} evalto 9 by E-Int{
                                        4 => {2 + _} >> {3 + _} evalto 9 by C-Plus{
                                          2 plus 4 is 6 by B-Plus{};
                                          6 => {3 + _} evalto 9 by C-Plus{
                                            3 plus 6 is 9 by B-Plus{};
                                            9 => _ evalto 9 by C-Ret{}
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                            }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
