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
flu_shot(Date).

% Check the status 
is_bcg(X) :- bcg(Date).
-is_bcg(X) :- not is_bcg(X).

is_meningitis(X) :- meningitis(Date).
-is_meningitis(X) :- not is_meningitis(X).

is_hepatitis_b(X) :- hepatitis_b(Date).
-is_hepatitis_b(X) :- not is_hepatitis_b(X).

is_polio(X) :- polio(Date).
-is_polio(X) :- not is_polio(X).

is_measles(X) :- measles(Date).
-is_measles(X) :- not is_measles(X).

is_rubella(X) :- rubella(Date).
-is_rubella(X) :- not is_rubella(X).

is_tetanus(X) :- tetanus(Date).
-is_tetanus(X) :- not is_tetanus(X).

is_flu_shot(X) :- flu_shot(Date).
-is_flu_shot(X) :- not flu_shot(X).


% Checking if someone is completely vaccinated
is_vaccinated(X) :- is_bcg(X), is_hepatitis_b(X), is_measles(X), is_meningitis(X), is_polio(X), is_rubella(X), is_flu_shot(X).

vaccinated(yes):-is_vaccinated(X).
vaccinated(no):- not is_vaccinated(X).

not_vaccine(bcg, X) :- not bcg(X).
not_vaccine(flu, X) :- not flu_shot(X).
not_vaccine(rubella, X):- not rubella(X).
not_vaccine(polio, X):- not polio(X).
not_vaccine(meningitis, X):- not meningitis(X). 
not_vaccine(measles, X):- not measles(X).
not_vaccine(hepatitis, X):- not heptatitis(X).
not_vaccine(tetatnus, X):- not no_tetanus(X).

missing_vaccines(X, Vaccines) :-findall(V, not_vaccine(V, X), Vaccines).


%member(X, [X|T]).
%member(Y , [X|T]) :- member(Y, T).

%if not vaccinated then make a list of what vaccinations needed
%%appendVacc([], Y, Y).
%appendVacc([H|T], Y, [H|Z]   ) :- appendVacc(T,Y,Z).