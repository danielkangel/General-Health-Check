#include 'GeneralInfo.lp'.
#include 'History.lp'.

%type 1 diabetes happens to ppl at a younger age 
%bmi kg/m^2   70 percent risk for those with 35kg/m^2
%highRiskType1 :- genetic


highRiskType2 :- bmi(X), age(Z), Z>40, X>30.