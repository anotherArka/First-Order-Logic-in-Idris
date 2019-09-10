module FOL_Formulas

import Data.Vect
import FOL_Terms

||| Types of relations of FOL
public export
data Relations : Nat -> Type where
    True_Formula : Relations Z
    False_Formula : Relations Z
    Relation : String -> (parity : Nat) -> (Relations parity)

||| Types of formulas of FOL
public export
data Formulas : Type where
    Atomic_formula : {parity : Nat} -> (Relations parity) ->
        (Vect parity FOL_Terms) -> Formulas
    Not : Formulas -> Formulas
    Or : Formulas -> Formulas -> Formulas
    And : Formulas -> Formulas -> Formulas
    For_all : Variable_symbols -> Formulas -> Formulas
    There_exists : Variable_symbols -> Formulas -> Formulas    
    
