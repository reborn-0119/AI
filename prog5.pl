% Base case: Maximum of 0 and Y is Y if Y is not negative
max(0, Y, Y) :- Y = 0; Y = s(_).

% Base case: Maximum of X and 0 is X if X is not negative
max(X, 0, X) :- X = 0; X = s(_).

% Recursive case: Maximum of s(X) and s(Y) is s(M) where M is the maximum of X and Y
max(s(X), s(Y), s(M)) :- max(X, Y, M).

% Example queries to demonstrate maximum calculation
% To run these, use a Prolog interpreter and query, e.g.:
% ?- max(s(0), s(s(0)), M). % M = s(s(0)) (max(1, 2) = 2)
% ?- max(s(s(0)), s(0), M). % M = s(s(0)) (max(2, 1) = 2)
% ?- max(0, s(s(0)), M). % M = s(s(0)) (max(0, 2) = 2)
% ?- max(s(s(0)), s(s(0)), s(s(0))). % true (max(2, 2) = 2)
