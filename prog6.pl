factorial(0, s(0)).

factorial(s(N), F) :- factorial(N, F1), multiply(s(N), F1, F).

multiply(0, _, 0).
multiply(s(X), Y, Z) :- multiply(X, Y, Z1), sum(Y, Z1, Z).

sum(0, Y, Y).
sum(s(X), Y, s(Z)) :- sum(X, Y, Z).

% Example queries to demonstrate factorial calculation
% To run these, use a Prolog interpreter and query, e.g.:
% ?- factorial(0, F). % F = s(0) (0! = 1)
% ?- factorial(s(0), F). % F = s(0) (1! = 1)
% ?- factorial(s(s(0)), F). % F = s(s(0)) (2! = 2)
% ?- factorial(s(s(s(0))), F). % F = s(s(s(s(s(s(0)))))) (3! = 6)
% ?- factorial(s(s(s(0))), s(s(s(s(s(s(0))))))). % true (3! = 6)