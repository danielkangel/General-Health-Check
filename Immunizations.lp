% Immunizations

% Common vaccines
meningitis.
hepatitis_b.
polio.
measles.
rubella.

is_bcg(X) :- bcg.
-is_bcg(X) :- not bcg.

is_meningitis(X) :- meningitis.
-is_meningitis(X) :- not meningitis.

is_hepatitis_b(X) :- hepatitis_b.
-is_hepatitis_b(X) :- not hepatitis_b.

is_polio(X) :- polio.
-is_polio(X) :- not polio.

is_measles(X) :- measles.
-is_measles(X) :- not measles.

is_rubella(X) :- rubella.
-is_rubella(X) :- not rubella.

% Checking if someone is completely vaccinated
is_vaccinated(X) :- is_bcg(X), is_hepatitis_b(X), is_measles(X), is_meningitis(X), is_polio(X), is_rubella(X).
not_vaccinated(X) :- not is_vaccinated(X).