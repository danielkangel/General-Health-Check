%%Patient History / Current

%Heart issues in the past 5 years
heart_attack.
heart_murmur.
% Define patient's heart condition
weak_heart(X):- heart_attack.
weak_heart(X):- heart_murmur.
-weak_heart(X):- not weak_heart.

% Bone conditions 
osteoporosis.
scoliosis.
arthiritis.
fractures.
% Define bone condition
weak_bones(X) :- osteoporosis.
weak_bones(X) :- scoliosis.
weak_bones(X) :- fractures.
weak_bones(X) :- arthiritis.
-weak_bones(X :- not weak_bones.

% Kidney conditions
kidney_stones.
kidney_disease.
weak_kidney(X) :- kidney_stones.
weak_kidney(X) :- kidney_disease.
-weak_kidney(X) :- not weak_kidney.

sum_of_risk(X): sums_the_risk(A, [weak_bones(B), weak_kidney(C), weak_heart(D)]).

sums_the_risk(X, []) :- X is 0.
sums_the_risk(X, [H|T]): call(H), sums_the_risk(X1, T), X is X1 + 1.
sums_the_risk(X, [H|T]): not call(H), sums_the_risk(X,T).


%highRiskType2 :- 
%    age(Age), obese(X), not is_normal_blood(Pressure), excercise(Minutes_Per_Week),
%    Minutes_Per_Week < 150,Age>45.

