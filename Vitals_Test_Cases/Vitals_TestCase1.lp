#include '../Vitals.lp'.
%%%%%%%%%%%%%%%%%%%%%
% Test Case 1
%%%%%%%%%%%%%%%%%%%%%
% Facts for a not healthy individual : Diastolic blood pressure is too high
% Expected results : QUERY:?- -is_healthy(A).
% 'Consult a doctor for abnormalities'
% ANSWER: 1 (in 0.0 ms)


% bodytemp(37).
% systolic(90).
% diastolic(100).
% breathingrate(13).
% pulserate(75).
% cholesterol(200).

%?- bloodpressure(A).
%?- -is_healthy(X).


%%%%%%%%%%%%%%%%%%%%%
% Test Case 2
%%%%%%%%%%%%%%%%%%%%%
% Facts for a not healthy individual : Cholesterol, pulserate and breathing rate is too high

bodytemp(37).
systolic(90).
diastolic(70).
breathingrate(17).
pulserate(110).
cholesterol(220).

% ?-pulse(A).
% ?-breath(B).
?-chol(C).

%%%%%%%%%%%%%%%%%%%%%
% Test Case 3
%%%%%%%%%%%%%%%%%%%%%
% Facts for a not healthy individual : Resting pulse rate is too high, Diastolic blood pressure is too high, breathing rate is too high

% bodytemp(37).
% systolic(90).
% diastolic(100).
% breathingrate(17). 
% pulserate(125).
% cholesterol(200).

%?-is_healthy(X).
%?-blood_pressure(A).
%?-pulse(B).
%?-breath(C).