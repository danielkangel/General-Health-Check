%%Patient History

%%List of Operation and Operation Dates
%Example [[wisdom, 02/19],[tonsil, 8/20]]
%surgical_history(X).



%Heart Problems in past five years
heartTrouble.
stroke.
-heartMurmur.

cardioVascular_disease:- heartTrouble, stroke, not heartMurmur.

healthy_heart:- not cardio_vascular_disease.

%Lifestyle Habits
%tobacco(YorN, Packs_Day, Years).
lung_cancer(medium_risk):-tobacco(yes,Packs_Day ,Years), Packs_Day =< 1, Years =< 1.
lung_cancer(high_risk):-tobacco(yes,Packs_Day ,Years), Packs_Day >= 1.
lung_cancer(high_risk):-tobacco(yes,Packs_Day ,Years), Years >= 1.


%True or False
%marijuana.
%caffeine()


%alchol_consumption(YorN, Frequency).
excercise(Minutes_Per_Week).


%FamilyHistory
alcohol_abuse(X).
asthma(X).
%List of Duples of Parent and Type of Cancer
cancer_history(List).
%Diabetes of Duples of Family and Type of Diabtes
diabetes_history(List).
%Heart Diease
heart_diease_history(List).
%Stroke
stroke_history(List).
%Migraines
migraines_history(List).

%type 1 diabetes happens to ppl at a younger age 
%bmi kg/m^2   70 percent risk for those with 35kg/m^2
%highRiskType1 :- genetic

excercise(130).


highRiskType2 :- 
    age(Age), obese(X), not is_normal_blood(Pressure), excercise(Minutes_Per_Week),
    Minutes_Per_Week < 150,Age>45.


problems(A, probs ) :-