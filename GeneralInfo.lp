%General Information
age(21).

%Assume in Metric
height(72).
weight(200).

% Defining male and female
male(X).
female(X).

% May not work for non-gender conforming
male(X):- not female(X).
female(X):- not male(X).
% Calculating BMI of user
bmi(X):-height(H),weight(W),square(H2,H), X is 703 * W / H2.
square(H2,H):-H2 is H * H.
% Categories of BMI: BMI < 18.5 : underweight, BMI 18.5-25 : Normal,  BMI 25-30 : Overweight, BMI > 30 : Obese
underweight(X):-bmi(B), B < 18.5.
normal_weight(X):-bmi(B), B >= 18.5, B < 25.
overweight(X):-bmi(B), B >= 25, B < 30.
obese(X):-bmi(B), B >= 30.

general_weight(underweight):- underweight(X).
general_weight(healhty_weight):- normal_weight(X).
general_weight(overweight):- overweight(X).
general_weight(obese):- obese(X).

