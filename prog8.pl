% Base case: Any number raised to power 0 is 1
power(_, 0, s(0)).

% Recursive case: Num^Pow = Num * Num^(Pow-1)
power(Num, s(Pow), Ans) :- 
    power(Num, Pow, Ans1), 
    multiply(Num, Ans1, Ans).

% Helper predicate: multiply(X, Y, Z) to compute X * Y = Z
multiply(0, _, 0).
multiply(s(X), Y, Z) :- multiply(X, Y, Z1), sum(Y, Z1, Z).

% Helper predicate: sum(X, Y, Z) to compute X + Y = Z
sum(0, Y, Y).
sum(s(X), Y, s(Z)) :- sum(X, Y, Z).

% Example queries to demonstrate power calculation
% To run these, use a Prolog interpreter and query, e.g.:
% ?- power(s(s(0)), s(s(0)), Ans). % Ans = s(s(s(s(0)))) (2^2 = 4)
% ?- power(s(s(s(0))), s(0), Ans). % Ans = s(s(s(0))) (3^1 = 3)
% ?- power(s(s(0)), 0, Ans). % Ans = s(0) (2^0 = 1)
% ?- power(s(s(s(0))), s(s(0)), s(s(s(s(s(s(s(s(s(0)))))))))). % true (3^2 = 9)