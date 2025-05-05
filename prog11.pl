% Base case: Sum of an empty list is 0
sumlist([], 0).

% Recursive case: Sum of list [H|T] is H plus sum of T
sumlist([H|T], S) :- sumlist(T, S1), sum(H, S1, S).

% Helper predicate: sum(X, Y, Z) to compute X + Y = Z
sum(0, Y, Y).
sum(s(X), Y, s(Z)) :- sum(X, Y, Z).

% Example queries to demonstrate sum of list
% To run these, use a Prolog interpreter and query, e.g.:
% ?- sumlist([], S). % S = 0
% ?- sumlist([s(0), s(s(0)), s(s(s(0)))], S). % S = s(s(s(s(s(s(0)))))) (1 + 2 + 3 = 6)
% ?- sumlist([s(s(0))], S). % S = s(s(0)) (2)
% ?- sumlist([s(0), s(0)], s(s(0))). % true (1 + 1 = 2)