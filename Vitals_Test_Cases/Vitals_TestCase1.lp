#include '../Vitals.lp'.

% Facts for a not healthy individual : Diastolic blood pressure is too high
bodytemp(37).
systolic(90).
diastolic(100).
breathingrate(13).
pulserate(75).
cholesterol(200).

?- -is_healthy(X).