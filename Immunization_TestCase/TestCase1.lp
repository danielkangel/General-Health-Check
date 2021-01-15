#include '../Immunizations.lp'.


person1:- meningitis, polio, bcg, hepatitis_b, rubella.


?- person1, missing_vaccines(A,B).