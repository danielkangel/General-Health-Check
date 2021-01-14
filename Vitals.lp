% Vital Signs body temp, blood pressure, rate of breathing, pulse rate

% Body temperature normal range: 36.1C - 37.2C
% Blood pressure normal range: 80mm/Hg - 120mm/Hg
% Rate of breathing normal range: 12 - 16 breaths per minute
% Resting pulse rate normal range: 60-100 beats/min

% Facts for a healthy individual
bodytemp(37.0).
bloodpressure(100).
breathingrate(13).
pulserate(75).

is_normal_temp(X) :- bodytemp(Temp), Temp >= 36.1, Temp =< 37.2.
is_normal_blood(X) :- bloodpressure(Pressure), Pressure >= 80, Pressure =< 120.
is_normal_breath(X) :- breathingrate(Bre), Bre >= 12, Bre =< 16.
is_normal_pulse(X) :-  pulserate(Pulse), Pulse >= 60, Pulse =< 100.

is_healthy(X) :- is_normal_blood(A), is_normal_breath(B), is_normal_pulse(C), is_normal_temp(D).


