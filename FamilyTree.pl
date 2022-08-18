%Family Tree Project Extended by Jatin Patel

%Facts
male(joey).
male(gilson).
male(X):- father(X,_).

female(mary).
female(carla).
female(abigail).
female(X):- mother(X,_).

father(daniel,joey).
father(daniel,mary).
father(nelson,daniel).
father(nelson,abigail).
father(nelson,joe).
father(joe,gilson).
father(gary,nelson).
father(jojo,carla).

mother(jane,joey).
mother(jane,mary).
mother(gina,jane).
mother(gina,jojo).

%Rules
parent(X,Y):- father(X,Y).
parent(X,Y):- mother(X,Y).

sibling(X,Y) :- parent(Z,X), parent(Z,Y), X \= Y.
brother(X,Y) :- male(X), sibling(X,Y), X \= Y.
sister(X,Y) :- female(X), sibling(X,Y), X \= Y.

aunt(X,Y) :- female(X), sibling(X,Z), parent(Z,Y).
uncle(X,Y) :- male(X), sibling(X,Z), parent(Z,Y). 

grandson(X,Y) :- male(X), parent(Y,Z), parent(Z, X).
granddaughter(X,Y) :- female(X), parent(Y,Z), parent(Z, X).

descendent(X,Y):- parent(Y,X).
descendent(X,Y) :- parent(Y, Z), descendent(X,Z).
