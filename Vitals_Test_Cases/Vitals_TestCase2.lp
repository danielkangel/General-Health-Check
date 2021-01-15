#include '../Vitals.lp'.

% Facts for a not healthy individual : temperature is too high and breathing rate is too
bodytemp(38).
systolic(90).
diastolic(70).
breathingrate(17).
pulserate(75).
cholesterol(200).

?-has_fever(X).