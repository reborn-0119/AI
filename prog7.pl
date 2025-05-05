
generate_fib(s(0), s(0)).

generate_fib(s(s(0)), s(0)).

generate_fib(s(s(N)), T) :- 
    generate_fib(s(N), T1), 
    generate_fib(N, T2), 
    sum(T1, T2, T).

% Helper predicate: sum(X, Y, Z) to compute X + Y = Z
sum(0, Y, Y).
sum(s(X), Y, s(Z)) :- sum(X, Y, Z).

% Example queries to demonstrate Fibonacci term generation
% To run these, use a Prolog interpreter and query, e.g.:
% ?- generate_fib(s(0), T). % T = s(0) (1st term = 1)
% ?- generate_fib(s(s(0)), T). % T = s(0) (2nd term = 1)
% ?- generate_fib(s(s(s(0))), T). % T = s(s(0)) (3rd term = 2)
% ?- generate_fib(s(s(s(s(0)))), T). % T = s(s(s(0))) (4th term = 3)
% ?- generate_fib(s(s(s(s(s(0))))), s(s(s(s(s(0)))))). % true (5th term = 5)