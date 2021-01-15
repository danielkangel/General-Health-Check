%%%%%%%%%%%%%%%
%Forward Pass with Missing Information and Mixed
%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
%Patient One Test Case
%%%%%%%%%%%%%%%

#include '../COVID-19_CheckList.lp'.

%Can HardCode Temp or can be pulled from Vitals
%Using the abducible allows for flexiblity and assums under temp
%temp(30.0).
#abducible temp(36).


patient1:-cough, cold, sore_throat,feeling_tired, not diarrhea,
    not traveled_14, not travel_to_COVID_Area,
    not direct_contact_COVID.

%Uncomment Each Query and run the file with:
%'time scasp -n0 ForwardPass.lp' will return speed of program and answer
%%%%%%%%%%%%%%%

%?-patient1, sum_risk(X).
%Answer = _
%Number of Models = 8
%In other words, eight different models were made.

%%%%%%%%%%%%%%%

%?-patient1, risk_level(low).
%Number of Models = 1
%Only One Model is low

%?-patient1, risk_level(medium).
%Number of Models = 7
%The other 7 Models are medium

%?-patient1, risk_level(high).
%Answer = no models
%No other models were possible

%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
%Patient Two Test Case
%%%%%%%%%%%%%%%


patient2:-cough, cold, not sore_throat, feeling_tired, not diarrhea,
    body_ache, headache, difficulty_breathing,
    direct_contact_COVID.

%Uncomment Each Query and run the file with:
%'time scasp -n0 ForwardPass.lp' will return speed of program and answer
%%%%%%%%%%%%%%%

%?-patient2, sum_risk(X).
%Answer = Multiple Models
%Number of Models = 4

%%%%%%%%%%%%%%%

%?-patient2, risk_level(high).
%Answer = Multiple Models
%Number of Models = 3

%?-patient2, risk_level(medium).
%Answer = Multiple Models
%Number of Models = 1

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



