%%Excercise 1.a.
path(a,b).
path(b,c).
path(c,d).
path(d,e).

%% Excecise 1.b.
can_get(X,Y) :- path(X,Y).
can_get(X,Y) :- path(X,Z), can_get(Z,Y).


