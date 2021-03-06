% Vital Signs body temp, blood pressure, rate of breathing, pulse rate

% Body temperature normal range: 36.1C - 37.2C
% Blood pressure normal range: systolic 80mm/Hg - 120mm/Hg, diastolic < 80mm/Hg
% Rate of breathing normal range: 12 - 16 breaths per minute
% Resting pulse rate normal range: 60-100 beats/min
% Cholesterol levels normal range: < 200 mg/DL


%checks cholesterol
cholesterol_normal(X) :- cholesterol(Z), Z<200.
cholesterol_border(X) :- cholesterol(Z), Z>=200, Z=<240.
cholesterol_high(X) :- cholesterol(Z), Z>240.

chol(high):- cholesterol_high(A).
chol(border):- cholesterol_border(B).
chol(normal):- cholesterol_normal(C).

% normal vitals
is_normal_temp(Temp) :- bodytemp(Temp), Temp >= 36.1, Temp =< 37.2.
is_normal_blood(X) :- systolic(Sys), diastolic(Dia), Sys =< 120, Dia =<80.
is_noral_breathm(X) :- breathingrate(Breath), Breath >= 12, Breath =< 16.
is_normal_pulse(Pulse) :-  pulserate(Pulse), Pulse >= 60, Pulse =< 100.

not_normal_blood(X) :- not is_normal_blood(Pressure).

% Systolic ranges
is_systolic_elevated(X) :- not_normal_blood(Pressure), systolic(Sys), Sys>120, Sys<130.
is_systolic_high1(X) :- not_normal_blood(Pressure), systolic(Sys), Sys >= 130, Sys<140.
is_systolic_high2(X) :- not_normal_blood(Pressure), systolic(Sys), Sys>=140, Sys<180.
is_systolic_crisis(X) :- not_normal_blood(Pressure), systolic(Sys), Sys>=180.

% Diastolic ranges
is_diastolic_high1(X) :- not_normal_blood(Pressure), diastolic(Dia), Dia>80, Dia<90.
is_diastolic_high2(X) :- not_normal_blood(Pressure), diastolic(Dia), Dia>=90, Dia<120.
is_diastolic_crisis(X) :- not_normal_blood(Pressure), diastolic(Dia), Dia>=120.

% categories for abnormal blood pressures
is_elevated_blood(X):- is_systolic_elevated(Sys), not is_high_blood_stg1(Z), not is_high_blood_stg2(Y), not is_high_blood_crisis(P).
is_high_blood_stg1(X):- is_diaslotic_high1(Dya), not is_high_blood_crisis(Z), not is_high_blood_stg2(Y).
is_high_blood_stg1(X):- is_systolic_high1(Sys), not is_high_blood_crisis(Z), not is_high_blood_stg2(Y).
is_high_blood_stg2(X):- is_diastolic_high2(Dya), not is_high_blood_crisis(Sys).
is_high_blood_stg2(X):- is_systolic_high2(Sys), not is_high_blood_crisis(Sys). 

% Call doctor immmediately. Emergency room
is_high_blood_crisis(X) :- is_diastolic_crisis(Dya).
is_high_blood_crisis(X) :- is_systolic_crisis(Sys).

%Establish blood pressure levels
blood_pressure(crisis) :- is_high_blood_crisis(X).
blood_pressure(stage2) :- is_high_blood_stg2(X).
blood_pressure(stage1) :- is_high_blood_stg1(X).
blood_pressure(elevated) :- is_elevated_blood(X).
blood_pressure(normal) :- is_normal_blood(X).

% categories for abnormal body temperatures
has_fever(X) :- not is_normal_temp(Temp), Temp > 37.2.

% categories for abnormal breathing
has_tachypnea(X) :- not is_normal_breath(Breath), Breath > 16.
has_bradypnea(X) :- not is_normal_breath(Breath), Breath < 12.
% categories for abnormal pulse rate
% Causes: potential damage from heart attack, heart disease, congenital heart disease, high blood pressure, smoking
has_tachycardia(X) :- not is_normal_pulse(Pulse), Pulse > 100. 
has_bradycardia(X) :- not is_normal_pulse(Pulse), Pulse < 60.

% The actual intelligent answer set programming
pulse(tachycardia) :- has_tachycardia(A).
pulse(bradycardia) :- has_bradycardia(B).
pulse(normal) :- is_normal_pulse(C).

breath(tachypnea) :- has_tachypnea(A).
breath(bradycardia) :- has_bradycardia(B).
breath(normal) :- is_normal_breath(C).

temp(fever):- has_fever(A).
temp(normal):- is_normal_temp(B).

is_healthy(X) :- is_normal_blood(A), is_normal_breath(B), is_normal_pulse(C), is_normal_temp(D), cholesterol_normal(Z).
-is_healthy(X) :- not is_healthy(X), write('Consult a doctor for abnormalities').

