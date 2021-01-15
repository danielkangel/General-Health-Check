%%%%%

#include '../COVID-19_CheckList.lp'.

%temp(30.0).
#abducible temp(36).
person1:-not cough,
    not sore_throat, not body_ache, headache,
    not feeling_tired, not traveled_14, not travel_to_COVID_Area,
    direct_contact_COVID.


?-  sum_risk(X).