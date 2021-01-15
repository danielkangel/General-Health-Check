%Psych Evaul CheckList

little_interest_or_pleasure(X).
feeling_down(X).
sleep_issues(X).
low_energy(X).
appetite_issues(X).
low_self_esteem(X).
focus_issues(X).
moving_speed_issues(X).
sucidal_thoughts(X).

problems_affected_work_or_home(X).

shade_1(X):-little_interest_or_pleasure(2).
shade_1(X):-little_interest_or_pleasure(3).

shade_2(X):-feeling_down(2).
shade_2(X):-feeling_down(3).

shade_3(X):-sleep_issues(2).
shade_3(X):-sleep_issues(3).

shade_4(X):-low_energy(2).
shade_4(X):-low_energy(3).

shade_5(X):-appetite_issues(2).
shade_5(X):-appetite_issues(3).

shade_6(X):-low_self_esteem(2).
shade_6(X):-low_self_esteem(3).

shade_7(X):-focus_issues(2).
shade_7(X):-focus_issues(3).

shade_8(X):-moving_speed_issues(2).
shade_8(X):-moving_speed_issues(3).

shade_9(X):-sucidal_thoughts(2).
shade_9(X):-sucidal_thoughts(2).

shade_10(X):-problems_affected_work_or_home(2).
shade_10(X):-problems_affected_work_or_home(3).