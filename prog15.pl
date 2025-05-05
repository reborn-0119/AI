% Base case: Delete element at position 1, return the tail
delete(s(0), [_|T], T).

% Recursive case: Delete element at position N in [H|T], keep H and delete at N-1 in T
delete(s(N), [H|T], [H|R1]) :- delete(N, T, R1).

% Example queries to demonstrate deletion
% To run these, use a Prolog interpreter and query, e.g.:
% ?- delete(s(0), [a, b, c], R). % R = [b, c] (delete at position 1)
% ?- delete(s(s(0)), [a, b, c], R). % R = [a, c] (delete at position 2)
% ?- delete(s(s(s(0))), [a, b, c, d], R). % R = [a, b, d] (delete at position 3)
% ?- delete(s(0), [x], R). % R = [] (delete at position 1 in single-element list)