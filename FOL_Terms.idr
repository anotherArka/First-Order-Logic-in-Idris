module FOL_Terms

import Data.Vect

||| This is possible values a constant can take. We can change this according
||| our requirement
Field : Type
Field = Nat    

||| Function along with its parity
data Function_Type : Nat -> Type where
    Function : String -> (parity : Nat) -> (Function_Type parity)

||| Type of terms in the FOL
data FOL_Terms : Type where
   Variable : String -> FOL_Terms
   Constant : Field -> FOL_Terms
   Comoposite : {parity : Nat} -> (Function_Type parity) -> 
       (Vect parity FOL_Terms) -> FOL_Terms
   
