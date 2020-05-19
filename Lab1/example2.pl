woman(mary).
woman(mia).
listens2music(mary).
had_lunch(mia).
happy(mary):- listens2music(mary).
not_hungry(X):- had_lunch(X).
