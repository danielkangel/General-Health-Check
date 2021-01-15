%%%%%%%%%%%%%%%
%Immunization Test Cases
%%%%%%%%%%%%%%%
#include '../Immunizations.lp'.

%%%%%%%%%%%%%%%
%Test 1
%%%%%%%%%%%%%%%
%meningitis.
%polio. 
%bcg. 
%hepatitis_b. 
%rubella.


%?- missing_vaccines(A,B).

%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%
%Test 2
%%%%%%%%%%%%%%%

%meningitis.
%polio. 
%bcg. 
%hepatitis_b. 
%rubella.

%?- vaccinated(A).

%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%
%Test 3
%%%%%%%%%%%%%%%

%flu_shot. 
%meningitis. 
%bcg. 
%hepatitis_b. 
%rubella. 
%polio. 
%measles. 
%tetanus.

%?- vaccinated(A).

%%%%%%%%%%%%%%%