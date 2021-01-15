#include '../Vitals.lp'.

% Facts for a not healthy individual : Diastolic blood pressure is too high

person1:-bodytemp(37), systolic(90), diastolic(100), breathingrate(13), pulserate(75),
        cholesterol(200).

?- -is_healthy(X).

% Facts for a not healthy individual : temperature is too high and breathing rate is too


person2:-bodytemp(38),systolic(90), diastolic(70), breathingrate(17), pulserate(75),cholesterol(200).

?-person2, has_fever(X).

% Facts for a not healthy individual : Diastolic blood pressure is too high


person3:-bodytemp(37), systolic(90), diastolic(100), breathingrate(17), 
        pulserate(75), cholesterol(200).