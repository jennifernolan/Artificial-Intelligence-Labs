cat(fluffy).
cat(lucky).
dog(ben).
mice(minnie).
mice(mickey).
hungry(ben).
sunny.
chases(X, Y):- dog(X), cat(Y).
chases(X, Y):- cat(X), mice(Y).
