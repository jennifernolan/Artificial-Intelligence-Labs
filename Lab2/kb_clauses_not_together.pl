%% Harry is a wizard.
wizard(harry).

%% Hagrid scares dudley.
scare(hagrid,dudley).

%% Uncle Vernon hates everything that is magical.
hate(uncle_vernon,X) :- magical(X).

%% All wizards are magical.
magical(X) :- wizard(X).

%% Aunt Petunia hates everything that is magical.
hate(aunt_petunia,X) :- magical(X).

%% Aunt Petunia hates anything that scares dudley.
hate(aunt_petunia,X) :- scare(X,dudley).
