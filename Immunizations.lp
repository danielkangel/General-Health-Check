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
no_bcg(X) :- not is_bcg(X).
is_bcg(X) :- not no_bcg(X).

is_meningitis(X) :- meningitis(Date).
is_meningitis(X) :- not no_meningitis(X).
no_meningitis(X) :- not is_meningitis(X).

is_hepatitis_b(X) :- hepatitis_b(Date).
is_hepatitis_b(X) :- not no_hepatitis_b(X).
no_hepatitis_b(X) :- not is_hepatitis_b(X).

is_polio(X) :- polio(Date).
is_polio(X) :- not no_polio(X).
no_polio(X) :- not is_polio(X).

is_measles(X) :- measles(Date).
is_measles(X) :- not no_measles(X).
no_measles(X) :- not is_measles(X).

is_rubella(X) :- rubella(Date).
is_rubella(X) :- not no_rubella(X).
no_rubella(X) :- not is_rubella(X).

is_flu_shot(X) :- flu_shot(Dates).
is_flu_shot(X) :- not no_flu_shot(Dates).
no_flu_shot(X) :- not flu_shot(Dates).

% Checking if someone is completely vaccinated
is_vaccinated(X) :- is_bcg(X), is_hepatitis_b(X), is_measles(X), is_meningitis(X), is_polio(X), is_rubella(X), is_flu_shot(X).
not_vaccinated(X) :- not is_vaccinated(X).
is_vaccinated(X) :- not not_vaccinated(X).
