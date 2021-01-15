%%%%%

#include '../COVID-19_CheckList.lp'.

temp(30.0).
person1:-not cough, not diarrhea,
    not sore_throat, not body_ache, headache, not difficulty_breathing,
    not feeling_tired, not traveled_14, not travel_to_COVID_Area,
    not direct_contact_COVID.

?- sum_risk_one(3).