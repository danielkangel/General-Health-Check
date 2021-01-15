#include '../Immunizations.lp'.

person3:- flu_shot, meningitis, bcg, hepatitis_b, rubella, polio, measles, tetanus.


?- person3, vaccinated(A).