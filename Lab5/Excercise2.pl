%%Excercise 2.
path(a,b).
path(a,d).
path(b,c).
path(c,d).
path(d,e).

has_service(c,pub).
has_service(e,hospital).

can_get(X,Y) :- path(X,Y).
can_get(X,Y) :- path(X,Z), can_get(Z,Y).


has_access(X,Y) :- has_service(Z,Y), can_get(X,Z).
has_access(X,Y) :- has_service(Z,Y), can_get(X,Z), has_access(X,Y).
