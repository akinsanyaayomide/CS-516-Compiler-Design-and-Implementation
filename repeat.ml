let rec repeat_helper (x:int) (z:'a) : 'a list = match x with 
  |0 -> []
  |1 -> [z]
  |y -> z :: repeat_helper(x-1) z

let rec repeat (p: 'a list) (x:int): 'a list = match p with 
|[]-> []
|h::tl -> repeat_helper x h @ repeat tl x