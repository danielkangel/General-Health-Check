%%%%%%%%%%%%%%%
%Forward Pass with Missing Information
%%%%%%%%%%%%%%%

#include '../COVID-19_CheckList.lp'.

%Can HardCode Temp or can be pulled from Vitals
%Using the abducible allows for flexiblity and assums under temp
%temp(30.0).
#abducible temp(36).

%%%%%%%%%%%%%%%
%Test 1
%%%%%%%%%%%%%%%

%?-sum_risk_one(X).
%Number of Combinations = 2048
%Combinations included setting variable combinations between all variables. 
%Will be the same with the one belwp
%Time it takes to run = 80 secs

%?-sum_risk_two(X).
%Number of Combinations = 2048
%Combinations included setting variable combinations between all variables. 
%Time it takes to run = 36 secs
%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%
%Test 2
%%%%%%%%%%%%%%%

?-sum_risk(12).
%Number of Combinations = 188
%Time it takes to run = 34 secs

%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%
%Test 3
%%%%%%%%%%%%%%%

%?-risk_level(stress).
%Number of Combinations = 24
%Time it takes to run = 28 secs

%?-risk_level(low).
%Number of Combinations = 202
%Time it takes to run = 35 secs

%Can the do the other levels, but the medium will take the longest.

%%%%%%%%%%%%%%%

#show cough/0.
#show cold/0.
#show diarrhea/0.
#show sore_throat/0.
#show body_ache/0.
#show headache/0.

#show difficulty_breathing/0.
#show feeling_tired/0.

%Three point
#show traveled_14/0.
#show travel_to_COVID_Area/0.
#show direct_contact_COVID/0.

