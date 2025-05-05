
conc([], L2, L2).

conc([H|T], L2, [H|L3]) :- conc(T, L2, L3).

% Example queries to demonstrate concatenation
% To run these, use a Prolog interpreter and query, e.g.:
% ?- conc([1,2], [3,4], L3). % L3 = [1,2,3,4]
% ?- conc([], [a,b], L3). % L3 = [a,b]
% ?- conc([x,y], [], L3). % L3 = [x,y]
% ?- conc([a], [b,c], [a,b,c]). % true