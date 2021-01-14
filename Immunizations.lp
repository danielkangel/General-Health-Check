% Immunizations

% Common vaccines
bcg(Date).
meningitis(Date).
hepatitis_b(Date).
polio(Date).
measles(Date).
rubella(Date).
pneumonia(Date).
tetanus(Date).

%List of Dates
flu_shot(Dates).

% Check the status 
is_bcg(X) :- bcg(Date).
-is_bcg(X) :- not bcg(Date).

is_meningitis(X) :- meningitis(Date).
-is_meningitis(X) :- not meningitis(Date).

is_hepatitis_b(X) :- hepatitis_b(Date).
-is_hepatitis_b(X) :- not hepatitis_b(Date).

is_polio(X) :- polio(Date).
-is_polio(X) :- not polio(Date).

is_rubella(X) :- rubella.
-is_rubella(X) :- not rubella.
bcg(Date).
meningitis(Date).
hepatitis_b(Date).
polio(Date).
measles(Date).
rubella(Date).
pneumonia(Date).
tetanus(Date).
%List of Dates
flu_shot(Dates).

% Checking if someone is completely vaccinated
is_vaccinated(X) :- is_bcg(X), is_hepatitis_b(X), is_measles(X), is_meningitis(X), is_polio(X), is_rubella(X).
is_bcg :- bcg(Date).
not is_bcg:- 
not_vaccinated(X) :- not is_vaccinated(X).

%Current Flu

get_recent(Recent):-flu_shot([Recent|T]).
