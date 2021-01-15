%%%%%

#include '../COVID-19_CheckList.lp'.

%temp(30.0).
#abducible temp(36).
person1:-cough, cold, sore_throat,feeling_tired, not diarrhea,
    not body_ache, not headache, not difficulty_breathing,
    not traveled_14, not travel_to_COVID_Area,
    not direct_contact_COVID.


?- person1, sum_risk(X).

%%%