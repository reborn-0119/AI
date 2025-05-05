% Base case: X is a member of a list if it is the head of the list
memb(X, [X|_]).

% Recursive case: X is a member of a list if it is in the tail
memb(X, [_|T]) :- memb(X, T).

% Example queries to demonstrate membership checking
% To run these, use a Prolog interpreter and query, e.g.:
% ?- memb(a, [b, a, c]). % true
% ?- memb(2, [1, 2, 3]). % true
% ?- memb(x, [a, b, c]). % false
% ?- memb(1, []). % false
% ?- memb(b, [a, b, c, b]). % true