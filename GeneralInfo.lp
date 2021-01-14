%General Information
age(21).

%Assume in Metric
height(72).
weight(200).


male(X).
female(X).

%May not work for non-gender conforming
male(X):- not female(X).
female(X):- not male(X).

bmi(X):-height(H),weight(W),square(H2,H), X is 703 * W / H2.

square(H2,H):-H2 is H * H.

underweight(X):-bmi(B), B < 18.5.
normal_weight(X):-bmi(B), B >= 18.5, B < 25.
overweight(X):-bmi(B), B >= 25, B < 30.
obese(X):-bmi(B), B >= 30.