%%%%%%%%%%%%%%%
%Patient One Test Case
%%%%%%%%%%%%%%%

#include '../COVID-19_CheckList.lp'.

%Can HardCode Temp or can be pulled from Vitals
%Using the abducible allows for flexiblity and assums under temp
%temp(30.0).
#abducible temp(36).


patient1:-cough, cold, sore_throat,feeling_tired, not diarrhea,
    not body_ache, not headache, not difficulty_breathing,
    not traveled_14, not travel_to_COVID_Area,
    not direct_contact_COVID.

%Uncomment Each Query and run the file with:
%'time scasp -n0 ForwardPass.lp' will return speed of program and answer
%%%%%%%%%%%%%%%

%?-patient1, sum_risk(X).
%Answer = 5

%%%%%%%%%%%%%%%

%?-patient1, risk_level(X).
%Answer = low

%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
%Patient Two Test Case
%%%%%%%%%%%%%%%


patient2:-not cough, cold, sore_throat, not feeling_tired, not diarrhea,
    body_ache, headache, not difficulty_breathing,
    traveled_14, travel_to_COVID_Area,
    not direct_contact_COVID.

%Uncomment Each Query and run the file with:
%'time scasp -n0 ForwardPass.lp' will return speed of program and answer
%%%%%%%%%%%%%%%

%?-patient2, sum_risk(X).
%Answer = 10

%%%%%%%%%%%%%%%

%?-patient2, risk_level(X).
%Answer = medium

%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
%Patient Three Test Case
%%%%%%%%%%%%%%%


patient3:-cough, cold, not sore_throat, feeling_tired, not diarrhea,
    body_ache, headache, difficulty_breathing,
    traveled_14, not travel_to_COVID_Area,
    direct_contact_COVID.

%Uncomment Each Query and run the file with:
%'time scasp -n0 ForwardPass.lp' will return speed of program and answer
%%%%%%%%%%%%%%%

%?-patient3, sum_risk(X).
%Answer = 14

%%%%%%%%%%%%%%%

%?-patient3, risk_level(X).
%Answer = high

%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
%Patient Four Test Case
%%%%%%%%%%%%%%%


patient4:-cough, cold, not sore_throat, not feeling_tired, not diarrhea,
    not body_ache, not headache, not difficulty_breathing,
    not traveled_14, not travel_to_COVID_Area,
    not direct_contact_COVID.

%Uncomment Each Query and run the file with:
%'time scasp -n0 ForwardPass.lp' will return speed of program and answer
%%%%%%%%%%%%%%%

%?-patient4, sum_risk(X).
%Answer = 2

%%%%%%%%%%%%%%%

%?-patient4, risk_level(X).
%Answer = stress

%%%%%%%%%%%%%%%