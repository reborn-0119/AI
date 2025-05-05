% Base case: Multiplying 0 by any number gives 0
multi(0, _, 0).

% Recursive case: Multiply s(N1) by N2 as N2 + (N1 * N2)
multi(s(N1), N2, R) :- multi(N1, N2, R1), sum(N2, R1, R).

% Helper predicate: sum(X, Y, Z) to compute X + Y = Z
sum(0, Y, Y).
sum(s(X), Y, s(Z)) :- sum(X, Y, Z).

% Example queries to demonstrate multiplication
% To run these, use a Prolog interpreter and query, e.g.:
% ?- multi(s(0), s(s(0)), R). % R = s(s(0)) (1 * 2 = 2)
% ?- multi(s(s(0)), s(s(s(0))), R). % R = s(s(s(s(s(s(0)))))) (2 * 3 = 6)
% ?- multi(0, s(s(0)), R). % R = 0 (0 * 2 = 0)
% ?- multi(s(s(s(0))), s(s(0)), s(s(s(s(s(s(0))))))). % true (3 * 2 = 6)
