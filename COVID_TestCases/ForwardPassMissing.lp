%%%%%%%%%%%%%%%
%Forward Pass with Missing Information
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


patient2:-body_ache, headache, not difficulty_breathing,
    traveled_14, travel_to_COVID_Area,
    not direct_contact_COVID.

%Uncomment Each Query and run the file with:
%'time scasp -n0 ForwardPass.lp' will return speed of program and answer
%%%%%%%%%%%%%%%

?-patient2, sum_risk(X).
%Answer = Multiple Models
%Number of Models = 32

%%%%%%%%%%%%%%%

?-patient2, risk_level(X).
%Answer = Multiple Models ranging from medium to high
%Number of Models = 39

%%%%%%%%%%%%%%%





