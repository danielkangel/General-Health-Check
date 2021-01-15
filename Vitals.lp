% Vital Signs body temp, blood pressure, rate of breathing, pulse rate

% Body temperature normal range: 36.1C - 37.2C
% Blood pressure normal range: 80mm/Hg - 120mm/Hg
% Rate of breathing normal range: 12 - 16 breaths per minute
% Resting pulse rate normal range: 60-100 beats/min

% Facts for a healthy individual
bodytemp(37.3).
bloodpressure(130).
breathingrate(13).
pulserate(75).

% normal vitals
is_normal_temp(X) :- bodytemp(Temp), Temp >= 36.1, Temp =< 37.2.
is_normal_blood(X) :- bloodpressure(Pressure), Pressure >= 80, Pressure =< 120.
is_normal_breath(X) :- breathingrate(Breath), Breath >= 12, Breath =< 16.
is_normal_pulse(X) :-  pulserate(Pulse), Pulse >= 60, Pulse =< 100.

% categories for abnormal blood pressures
is_elevated_blood(X) :- not is_normal_blood(Pressure), bloodpressure(Pressure), Pressure > 120, Pressure =< 129.
is_high_blood_stg1(X) :- not is_normal_blood(Pressure), bloodpressure(Pressure), Pressure >= 130, Pressure =< 139.
is_high_blood_stg2(X) :- not is_normal_blood(Pressure), bloodpressure(Pressure), Pressure >= 140, Pressure =< 180.
% Call doctor immmediately. Emergency room
is_high_blood_crisis(X) :- not is_normal_blood(Pressure), bloodpressure(Pressure), Pressure > 180.

% categories for abnormal body temperatures
has_fever(X) :- not is_normal_temp(Temp), Temp > 37.2.

% categories for abnormal breathing
has_tachypnea(X) :- not is_normal_breath(Breath), Breath > 16.
has_bradypnea(X) :- not is_normal_breath(Breath), Breath < 12.
% categories for abnormal pulse rate
% potential damage from heart attack, heart disease, congenital heart disease, high blood pressure, smoking
has_tachycardia(X) :- not is_normal_pulse(Pulse), Pulse > 100. 
has_bradycardia(X) :- not is_normal_pulse(Pulse), Pulse < 60.

is_healthy(X) :- is_normal_blood(A), is_normal_breath(B), is_normal_pulse(C), is_normal_temp(D).
% is_not_healthy :- not is_healthy.

