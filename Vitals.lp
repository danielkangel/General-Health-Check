% Vital Signs body temp, blood pressure, rate of breathing, pulse rate

% Body temperature normal range: 36.1C - 37.2C
% Blood pressure normal range: 80mm/Hg - 120mm/Hg
% Rate of breathing normal range: 12 - 16 breaths per minute
% Resting pulse rate normal range: 60-100 beats/min

% Facts for a healthy individual
bodytemp(37.0).
systolic(100).
diastolic(70).
breathingrate(13).
pulserate(75).

% normal vitals
is_normal_temp(X) :- bodytemp(Temp), Temp >= 36.1, Temp =< 37.2.
is_normal_blood(X) :- systolic(Sys), diastolic(Dia), Sys =< 120, Dia =<80.
is_normal_breath(X) :- breathingrate(Breath), Breath >= 12, Breath =< 16.
is_normal_pulse(X) :-  pulserate(Pulse), Pulse >= 60, Pulse =< 100.

-is_normal_blood(X) :- not is_normal_blood(Pressure);

% Systolic ranges
is_systolic_elevated(X) :- -is_normal_blood(Pressure), systolic(Sys), Sys>120, Sys<130.
is_systolic_high1(X) :- -is_normal_blood(Pressure), systolic(Sys), Sys >= 130, Sys<140.
is_systolic_high2(X) :- -is_normal_blood(Pressure), systolic(Sys), Sys>=140, Sys<180.
is_systolic_crisis(X) :- -is_normal_blood(Pressure), systolic(Sys), Sys>=180.

% Diastolic ranges
is_diaslotic_high1(X) :- -is_normal_blood(Pressure), diastolic(Dia), Dia>80, Dia<90.
is_diastolic_high2(X) :- -is_normal_blood(Pressure), diastolic(Dia), Dia>=90, Dia<120.
is_diastolic_crisis(X) :- -is_normal_blood(Pressure), diastolic(Dia), Dia>=120.

% categories for abnormal blood pressures
is_elevated_blood(X) :- -is_normal_blood(Pressure), systolic(Sys), diastolic(Dia), Sys > 120, Sys =< 129, Dia > 80, Dia<=89.
is_high_blood_stg1(X) :- -is_normal_blood(Pressure), systolic(Sys), diastolic(Dia), Sys > 130, Sys =< 139.
is_high_blood_stg2(X) :- -is_normal_blood(Pressure), bloodpressure(Pressure), Pressure > 140, Pressure =< 180.
% Call doctor immmediately. Emergency room
is_high_blood_crisis(X) :- -is_normal_blood(Pressure), bloodpressure(Pressure), Pressure > 180.

% categories for abnormal body temperatures
has_fever(X) :- not is_normal_temp(Temp), Temp > 37.2.

% categories for abnormal breathing
has_tachypnea(X) :- not is_normal_breath(Breath), Breath > 16.
has_bradypnea(X) :- not is_normal_breath(Breath), Breath < 12.
% categories for abnormal pulse rate

is_healthy(X) :- is_normal_blood(A), is_normal_breath(B), is_normal_pulse(C), is_normal_temp(D).
is_not_healthy :- not is_healthy.

