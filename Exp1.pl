female(afroza).
female(parveen).
female(ruhi).
female(almash).
female(eve).

male(abdul).
male(mazahir).
male(safiq).
male(musharraf).

mother(afroza,mazahir).
mother(parveen,ruhi).
mother(ruhi,almash).
mother(ruhi,musharraf).
mother(ruhi,eve).

father(abdul,mazahir).
father(safiq,ruhi).
father(mazahir,almash).
father(mazahir,musharraf).
father(mazahir,eve).

parent(X,Y) :- mother(X,Y),female(X);father(X,Y),male(X).
grandparent(X,Y) :- parent(Z,Y),parent(X,Z).
sister(X,Y) :- father(A,X),father(A,Y),mother(B,X),mother(B,Y),female(X),X\==Y.
brother(X,Y) :- father(A,X),father(A,Y),mother(B,X),mother(B,Y),male(X),X\==Y.
sibling(X,Y) :- parent(A,X),parent(A,Y),(X\=Y).
