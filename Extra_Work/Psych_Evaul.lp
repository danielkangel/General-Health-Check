%Psych Eval CheckList

little_interest_or_pleasure(3).
feeling_down(3).
sleep_issues(3).
low_energy(3).
appetite_issues(3).
low_self_esteem(3).
focus_issues(3).
moving_speed_issues(3).
sucidal_thoughts(3).

%#show little_interest_or_pleasure/0.
%#show feeling_down/0.
%#show sleep_issues/0.
%#show low_energy/0.
%#show appetite_issues/0.
%#show low_self_esteem/0.
%#show focus_issues/0.
%#show moving_speed_issues/0.
%#show sucidal_thoughts/0.


%problems_affected_work_or_home.

check_1:-little_interest_or_pleasure(2).
check_1:-little_interest_or_pleasure(3).
-check_1:-little_interest_or_pleasure(0).
-check_1:-little_interest_or_pleasure(1).

check_2:-feeling_down(2).
check_2:-feeling_down(3).
-check_2:-feeling_down(0).
-check_2:-feeling_down(1).

check_3:-sleep_issues(2).
check_3:-sleep_issues(3).
-check_3:-sleep_issues(0).
-check_3:-sleep_issues(1).

check_4:-low_energy(2).
check_4:-low_energy(3).
-check_4:-low_energy(0).
-check_4:-low_energy(1).

check_5:-appetite_issues(2).
check_5:-appetite_issues(3).
-check_5:-appetite_issues(0).
-check_5:-appetite_issues(1).

check_6:-low_self_esteem(2).
check_6:-low_self_esteem(3).
-check_6:-low_self_esteem(0).
-check_6:-low_self_esteem(1).

check_7:-focus_issues(2).
check_7:-focus_issues(3).
-check_7:-focus_issues(0).
-check_7:-focus_issues(1).

check_8:-moving_speed_issues(2).
check_8:-moving_speed_issues(3).
-check_8:-moving_speed_issues(0).
-check_8:-moving_speed_issues(1).

check_9:-sucidal_thoughts(2).
check_9:-sucidal_thoughts(3).
-check_9:-sucidal_thoughts(0).
check_9:-sucidal_thoughts(1).

sum_shaded(X):-sum_shaded(X,[check_1, check_2, check_3, check_4, check_5, check_6, check_7, check_8, check_9]).

sum_shaded(X,[]):- X is 0.
sum_shaded(X,[H|T]):- call(H), sum_shaded(X1,T), X is X1 + 1.
sum_shaded(X,[H|T]):- not call(H), sum_shaded(X,T).

sum_depression(X):-sum_shaded(Shaded), Shaded < 4, X is 0.
sum_depression(X):-sum_shaded(Shaded), Shaded >= 4, little_interest_or_pleasure(A),feeling_down(B),sleep_issues(C),low_energy(D),appetite_issues(E),low_self_esteem(F),focus_issues(G),moving_speed_issues(H),sucidal_thoughts(I),
                    X is A+B+C+D+E+F+G+H+I.




%check_10:-problems_affected_work_or_home(1).
%check_10:-problems_affected_work_or_home(2).
%check_10:-problems_affected_work_or_home(3).
%-check_10:-problems_affected_work_or_home(0).


minimal:-sum_depression(X),X >= 1,X =< 4.
neg_minimal:-sum_depression(X),X > 5.

mild:-sum_depression(X),X >= 5,X =< 9.
neg_mild:-sum_depression(X),X < 5.
neg_mild:-sum_depression(X),X > 9.

moderate:-sum_depression(X),X >= 10,X =< 14.
neg_moderate:-sum_depression(X),X < 10.
neg_moderate:-sum_depression(X),X > 14.

moderately_severe:-sum_depression(X),X >= 15,X =<19.
neg_moderate_severe:-sum_depression(X),X < 15.
neg_moderate_severe:-sum_depression(X),X > 19.

severe:-sum_depression(X),X >= 20, X =< 27.
neg_severe:-sum_depression(X), X < 20.

risk_level(severe_depression):-severe.
risk_level(moderately_severe_depression):-moderately_severe.
risk_level(moderate_depression):-moderate.
risk_level(mild_depression):-mild.
risk_level(minimal_depression):-minimal.

