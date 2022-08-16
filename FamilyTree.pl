%Family Tree Project Extended by Jatin Patel

%Facts
male(Joey).
male(Gilson).
male(X):-father(X,_).

female(Mary).
female(Carla).
female(Abigail).
female(X):-mother(X,_).

father(Daniel,Joey).
father(Daniel,Mary).
father(Nelson,Daniel).
father(Nelson,Abigail).
father(Nelson,Joe).
father(Joe,Gilson).
father(Gary,Nelson).
father(Jojo,Carla).

mother(Jane,Joey).
mother(Jane,Mary).
mother(Gina,Jane).
mother(Gina,Jojo).

%Rules
parent(X,Y):- father(X,Y).
parent(X,Y):- mother(X,Y).
sibling(X,Y) :- parent(Z,X), parent(Z,Y), X \= Y.
brother(X,Y) :- male(X), parent(Z,X), parent(Z,Y), X \= Y.
sister(X,Y) :- female(X), parent(Z,X), parent(Z,Y), X \= Y.

aunt(X,Y) :- female(X), sibling(X,Z), parent(Z,Y).
uncle(X,Y) :- male(X), sibling(X,Z), parent(Z,Y).
cousin(X,Y) :- uncle(X,Z), parent(Z,Y).  
grandson(X,Y) :- male(X), parent(Y,Z), parent(Z, X).
granddaughter(X,Y) :- female(X), parent(Y,Z), parent(Z, X).
descendent(X,Y):- parent(Y,X).
descendent(X,Y) :- parent(Y, Z), descendent(X,Z).
