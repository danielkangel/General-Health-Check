% Create rules for the status 
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
is_tetanus(X) :- tetanus.
-is_tetanus(X) :- not tetanus.
is_flu_shot(X) :- flu_shot.
-is_flu_shot(X) :- not flu_shot.


% Checking if someone is completely vaccinated
is_vaccinated(X) :- is_bcg(A), is_hepatitis_b(B), is_measles(C), is_meningitis(D), is_polio(E), is_rubella(F), is_flu_shot(G), is_tetanus(H).


% Vaccinated status
vaccinated(yes):-is_vaccinated(X).
vaccinated(no):- not is_vaccinated(X).


% Scan to list all the vaccines a person hasn't taken
not_vaccine(bcg, X) :- not is_bcg(X).
not_vaccine(flu, X) :- not is_flu_shot(X).
not_vaccine(rubella, X):- not is_rubella(X).
not_vaccine(polio, X):- not is_polio(X).
not_vaccine(meningitis, X):- not is_meningitis(X). 
not_vaccine(measles, X):- not is_measles(X).
not_vaccine(hepatitis_b, X):- not is_hepatitis_b(X).
not_vaccine(tetanus, X):- not is_tetanus(X).


% Find all non vaccines
missing_vaccines(X, Vaccines):-findall(V, not_vaccine(V, X), Vaccines).
