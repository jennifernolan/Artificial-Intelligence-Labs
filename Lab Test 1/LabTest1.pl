%%Jennifer Nolan C16517636
isa(sam,seal).
isa(bob,penguin).
isa(opus,penguin).
isa(tweety,canary).
isa(ken,canary).
isa(seal,seacreature).
isa(penguin,seacreature).
isa(penguin,bird).
isa(canary,bird).

hasfeature(penguin,walks).
hasfeature(canary,flys).
hasfeature(seacreature,swims).
hasfeature(bird,feathers).
hasfeature(bird,wings).

species(X,Y) :- isa(X,Z), isa(Y,Z).

hasproperty(X,Y) :- hasfeature(Z,Y); isa(X,Z).
hasproperty(X,Y) :- hasfeature(Z,Y); isa(X,Z); hasproperty(X,Y).


