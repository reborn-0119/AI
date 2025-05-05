% Base case: Sum of 0 and Y is Y
sum(0, Y, Y).

% Recursive case: Sum of X and Y is Z, where X is successor of X1 and Z is successor of Z1
sum(s(X), Y, s(Z)) :- sum(X, Y, Z).

% Example queries to demonstrate sum calculation
% To run these, use a Prolog interpreter and query, e.g.:
% ?- sum(s(0), s(0), Z). % Z = s(s(0)) (1 + 1 = 2)
% ?- sum(s(s(0)), s(0), Z). % Z = s(s(s(0))) (2 + 1 = 3)
% ?- sum(0, s(s(0)), Z). % Z = s(s(0)) (0 + 2 = 2)
% ?- sum(s(s(0)), s(s(0)), s(s(s(s(0))))). % true (2 + 2 = 4)