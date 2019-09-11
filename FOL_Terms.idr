module FOL_Terms

import Data.Vect

||| This is possible values a constant can take. We can change this according
||| our requirement
public export
Field : Type
Field = Nat    

||| The type of symbol of variables of FOL
public export
data Variable_symbols : Type where
    Variable_symbol : String -> Variable_symbols

||| The type of symbol of constants of FOL
public export
data Constant_symbols : Type where
    Constant_symbol : String -> Constant_symbols
    
||| Function along with its parity
public export
data Function_Type : Nat -> Type where
    Function : String -> (parity : Nat) -> (Function_Type parity)


||| Type of terms in the FOL
public export
data FOL_Terms : Type where
   Variable : Variable_symbols -> FOL_Terms
   Constant : Constant_symbols -> FOL_Terms
   Comoposite : {parity : Nat} -> (Function_Type parity) -> 
       (Vect parity FOL_Terms) -> FOL_Terms
   
