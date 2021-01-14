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

is_measles(X) :- measles(Date).
-is_measles(X) :- not measles(Date).

is_rubella(X) :- rubella(Date).
-is_rubella(X) :- not rubella(Date).

is_flu_shot(X) :- flu_shot(Dates).
-is_flu_shot(X) :- not flu_shot(Dates).

% Checking if someone is completely vaccinated
is_vaccinated(X) :- is_bcg(X), is_hepatitis_b(X), is_measles(X), is_meningitis(X), is_polio(X), is_rubella(X), is_flu_shot(X).
-is_vaccinated(X) :- not is_vaccinated(X).