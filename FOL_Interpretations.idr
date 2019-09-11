module FOL_Interpretations

import Data.Vect
import FOL_Terms
import FOL_Formulas	

||| Type where our formulas will be interpreted
Field : Type
Field = Nat

Calculate_function_type : Nat -> Type
Calculate_function_type Z = Field
Calculate_function_type (S n) = Field -> (Calculate_function_type n)

Primary_mappings_constants : Type
Primary_mappings_constants = Constant_symbols -> Field

Primary_mappings_functions : Type
Primary_mappings_functions = {parity : Nat} -> 
    (Function_Type parity) -> (Calculate_function_type parity) 
