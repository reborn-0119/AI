% Base case: Maximum of a single-element list is that element
maxlist([X], X).

% Recursive case: Maximum of [H|T] is M, where M is the maximum of H and the max of T
maxlist([H|T], M) :- 
    maxlist(T, M1), 
    max(H, M1, M).

% Helper predicate: max(X, Y, M) to compute the maximum of X and Y
max(0, Y, Y) :- Y = 0; Y = s(_).
max(X, 0, X) :- X = 0; X = s(_).
max(s(X), s(Y), s(M)) :- max(X, Y, M).

% Example queries to demonstrate maximum of list
% To run these, use a Prolog interpreter and query, e.g.:
% ?- maxlist([s(0), s(s(0)), s(s(s(0)))], M). % M = s(s(s(0))) (max(1, 2, 3) = 3)
% ?- maxlist([s(s(0))], M). % M = s(s(0)) (max(2) = 2)
% ?- maxlist([s(s(s(0))), s(0), s(s(0))], M). % M = s(s(s(0))) (max(3, 1, 2) = 3)
% ?- maxlist([s(s(0)), s(s(s(0)))], s(s(s(0)))). % true (max(2, 3) = 3)