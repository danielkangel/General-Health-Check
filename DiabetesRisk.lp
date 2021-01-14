#include 'GeneralInfo.lp'.
#include 'History.lp'.
#include 'Vitals.lp'.

%type 1 diabetes happens to ppl at a younger age 
%bmi kg/m^2   70 percent risk for those with 35kg/m^2
%highRiskType1 :- genetic


highRiskType2 :- 
    age(Age), obese(X), -is_normal_blood(Pressure), excercise(Minutes_Per_Week),
    Minutes_Per_Week < 150,Age>45.