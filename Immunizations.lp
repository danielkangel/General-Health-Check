% Immunizations

% Common vaccines
bcg.
meningitis.
hepatitis_b.
polio.
measles.
rubella.
pneumonia.
tetanus.

%List of Dates
flu_shot.

% Check the status 
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

vaccinated(yes):-is_vaccinated(X).
vaccinated(no):- not is_vaccinated(X).

% WIP
not_vaccine(bcg, X) :- -is_bcg(X).
not_vaccine(flu, X) :- -is_flu_shot(X).
not_vaccine(rubella, X):- -is_rubella(X).
not_vaccine(polio, X):- -is_polio(X).
not_vaccine(meningitis, X):- -is_meningitis(X). 
not_vaccine(measles, X):- -is_measles(X).
not_vaccine(hepatitis_b, X):- -is_heptatitis_b(X).
not_vaccine(tetanus, X):- -is_tetanus(X).

missing_vaccines(X, Vaccines) :-findall(V, not_vaccine(V, X), Vaccines).


%member(X, [X|T]).
%member(Y , [X|T]) :- member(Y, T).

%if not vaccinated then make a list of what vaccinations needed
%%appendVacc([], Y, Y).
%appendVacc([H|T], Y, [H|Z]   ) :- appendVacc(T,Y,Z).