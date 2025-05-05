% Base case: Empty list has even length (0 elements)
evenlength([]).

% Recursive case: List has even length if its tail's tail has even length
evenlength([_, _|T]) :- evenlength(T).

% Base case: List with one element has odd length
oddlength([_]).

% Recursive case: List has odd length if its tail's tail has odd length
oddlength([_, _|T]) :- oddlength(T).

% Example queries to demonstrate even and odd length checking
% To run these, use a Prolog interpreter and query, e.g.:
% ?- evenlength([]). % true (0 elements)
% ?- evenlength([a, b]). % true (2 elements)
% ?- evenlength([a, b, c]). % false (3 elements)
% ?- oddlength([x]). % true (1 element)
% ?- oddlength([x, y, z]). % true (3 elements)
% ?- oddlength([x, y]). % false (2 elements)
