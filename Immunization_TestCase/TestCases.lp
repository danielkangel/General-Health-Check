%%%%%%%%%%%%%%%
%Immunization Test Cases
%%%%%%%%%%%%%%%
#include '../Immunizations.lp'.

%%%%%%%%%%%%%%%
%Test 1
%%%%%%%%%%%%%%%
person1:- meningitis, polio, bcg, hepatitis_b, rubella.


%?- person1, missing_vaccines(A,B).

%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%
%Test 2
%%%%%%%%%%%%%%%

person2:- meningitis, polio, bcg, hepatitis_b, rubella.

%?- person2, vaccinated(A).

%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%
%Test 3
%%%%%%%%%%%%%%%

person3:- flu_shot, meningitis, bcg, hepatitis_b, rubella, polio, measles, tetanus.

%?- person3, vaccinated(A).

%%%%%%%%%%%%%%%