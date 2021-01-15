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



%highRiskType2 :- 
%    age(Age), obese(X), not is_normal_blood(Pressure), excercise(Minutes_Per_Week),
%    Minutes_Per_Week < 150,Age>45.

