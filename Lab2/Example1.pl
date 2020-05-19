wizard(harry).
scares(hagrid,dudley).
magical(X) :- wizard(X).
hates(uncle_vernon,X) :- magical(X).
hates(aunt_petunia,X) :- magical(X).
hates(aunt_petunia,X) :- scares(X,dudley).