%COVID-19 CheckList
%Most Recent Version
temp(40.0).

%One Point
%cough.
%cold.
%diarrhea.
%sore_throat.
%body_ache.
%headache.
fever(X):-temp(Temp), Temp >= 37.8.

is_cough(X):- cough.
-is_cough(X):- not cough.
is_cold(X):- cold.
-is_cold(X):- not cold.
is_diarrhea(X):- diarrhea.
-is_diarrhea(X):- not diarrhea.
is_sore_throat(X):- sore_throat.
-is_sore_throat(X):- not sore_throat.
is_body_ache(X):- body_ache.
-is_body_ache(X):- not body_ache.
is_headache(X):- headache.
-is_headache(X):- not headache.
is_fever(X):- fever(X).
-is_fever(X):- not fever(X).

%Two Point
%difficulty_breathing.
%feeling_tired.

is_difficulty_breathing(X):- difficulty_breathing.
-is_difficulty_breathing(X):- not difficulty_breathing.
is_feeling_tired(X):- feeling_tired.
-is_feeling_tired(X):- not feeling_tired.

%Three point
%traveled_14.
%travel_to_COVID_Area.
%direct_contact_COVID.

is_traveled_14(X):- traveled_14.
-is_traveled_14(X):- not traveled_14.
is_travel_to_COVID_Area(X):- travel_to_COVID_Area.
-is_travel_to_COVID_Area(X):- not travel_to_COVID_Area.
is_direct_contact_COVID(X):- direct_contact_COVID.
-is_direct_contact_COVID(X):- not direct_contact_COVID.


sum_risk(X):-sum_risk_three(Three),sum_risk_two(Two),sum_risk_one(One), X is One + Two + Three.

sum_risk_one(X):- sum_risk_one(X,[is_cough(A), is_cold(B), is_diarrhea(C), is_sore_throat(D), is_body_ache(E), is_headache(F), is_fever(G)]).

sum_risk_one(X,[]):- X is 0.
sum_risk_one(X,[H|T]):- sum_risk_one(X1,T), call(H) , X is X1 + 1.
sum_risk_one(X,[H|T]):- sum_risk_one(X,T).

sum_risk_two(X):- sum_risk_two(X,[is_difficulty_breathing(X), is_feeling_tired(X)]).

sum_risk_two(X,[]):- X is 0.
sum_risk_two(X,[H|T]):- sum_risk_two(X1,T), call(H) , X is X1 + 2.
sum_risk_two(X,[H|T]):- sum_risk_two(X,T).

sum_risk_three(X):- sum_risk_three(X,[is_traveled_14(A), is_travel_to_COVID_Area(B), is_direct_contact_COVID(C)]).

sum_risk_three(X,[]):- X is 0.
sum_risk_three(X,[H|T]):- sum_risk_three(X1,T), call(H) , X is X1 + 3.
sum_risk_three(X,[H|T]):- sum_risk_three(X,T).


may_be_stress(X):-sum_risk(Risk), Risk >= 0, Risk =< 2.
low_risk(X):- sum_risk(Risk), Risk >= 3, Risk =< 5.
%Consult Doctor
medium_risk(X):- sum_risk(Risk), Risk >= 6, Risk =< 12.
%Seek Medical Attention
high_risk(X):- sum_risk(Risk), Risk >= 12, Risk =< 24.

risk_level(high):-high_risk(X).
risk_level(medium):-medium_risk(X).
risk_level(low):-low_risk(X).
risk_level(stress):-may_be_stress(X).