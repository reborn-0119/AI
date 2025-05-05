% Base case: Insert I at position 1 in list L, resulting in [I|L]
insert(I, s(0), L, [I|L]).

% Recursive case: Insert I at position N in [H|T], resulting in [H|R1] where I is inserted at N-1 in T
insert(I, s(N), [H|T], [H|R1]) :- insert(I, N, T, R1).

% Example queries to demonstrate insertion
% To run these, use a Prolog interpreter and query, e.g.:
% ?- insert(a, s(0), [b, c], R). % R = [a, b, c] (insert a at position 1)
% ?- insert(x, s(s(0)), [a, b, c], R). % R = [a, x, b, c] (insert x at position 2)
% ?- insert(1, s(s(s(0))), [2, 3, 4], R). % R = [2, 3, 1, 4] (insert 1 at position 3)
% ?- insert(z, s(0), [], R). % R = [z] (insert z at position 1 in empty list)