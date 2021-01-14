% Immunizations

% Common vaccines
bcg.
meningitis.
hepatitis_b.
polio.
measles.
rubella.

% Checking if someone is completely vaccinated
is_vaccinated(X) :- bcg, meningitis, hepatitis_b, polio, measles, rubella.
not_vaccinated(X) :- not is_vaccinated(X).