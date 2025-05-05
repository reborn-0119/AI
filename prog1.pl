
parent(john, mary).
parent(john, peter).
parent(susan, mary).
parent(susan, peter).
parent(mary, tom).
parent(mary, ann).
parent(paul, tom).
parent(paul, ann).
parent(peter, lisa).
parent(peter, bob).
parent(jane, lisa).
parent(jane, bob).

male(john).
male(peter).
male(paul).
male(tom).
male(bob).
female(susan).
female(mary).
female(jane).
female(ann).
female(lisa).

father(X, Y) :- male(X), parent(X, Y).

mother(X, Y) :- female(X), parent(X, Y).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

brother(X, Y) :- sibling(X, Y), male(X).

sister(X, Y) :- sibling(X, Y), female(X).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

grandfather(X, Y) :- grandparent(X, Y), male(X).

grandmother(X, Y) :- grandparent(X, Y), female(X).

child(Y, X) :- parent(X, Y).

son(Y, X) :- child(Y, X), male(Y).

daughter(Y, X) :- child(Y, X), female(X).

% Example queries to demonstrate relationships
% To run these, use a Prolog interpreter and query, e.g.:
% ?- father(john, mary). % true
% ?- mother(susan, peter). % true
% ?- sibling(mary, peter). % true
% ?- grandfather(john, tom). % true
% ?- sister(lisa, bob). % true