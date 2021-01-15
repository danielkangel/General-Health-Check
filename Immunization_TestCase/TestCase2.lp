#include '../Immunizations.lp'.

person2:- meningitis, polio, bcg, hepatitis_b, rubella.

?- person2, vaccinated(A).