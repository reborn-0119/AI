%  Reverse of an empty list is an empty list
reverse([], []).

% Recursive case: Reverse of [H|T] is R, where R is the reverse of T appended with [H]
reverse([H|T], R) :- reverse(T, RT), append(RT, [H], R).

% Helper predicate: append/3 to concatenate two lists
append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).

% Example queries to demonstrate reversal
% To run these, use a Prolog interpreter and query, e.g.:
% ?- reverse([1,2,3], R). % R = [3,2,1]
% ?- reverse([a,b,c], R). % R = [c,b,a]
% ?- reverse([], R). % R = []
% ?- reverse([x], R). % R = [x]
% ?- reverse([1,2,3], [3,2,1]). % true