% Immunizations

% Common vaccines
bcg(X).
meningitis(X).
hepatitis_b(X).
polio(X).
measles(X).
rubella(X).

% Checking if someone is completely vaccinated
is_bcg(X) :- bcg(X).
not_vaccinated(X) :- not is_vaccinated(X).