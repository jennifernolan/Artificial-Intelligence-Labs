sits_right_of(ron,natalie).
sits_right_of(hermione,ron).
sits_right_of(harry,hermione).
sits_right_of(colin,harry).
sits_right_of(seamus,colin).
sits_right_of(angelina,seamus).
sits_right_of(ginny,angelina).
sits_right_of(dean,ginny).
sits_right_of(dennis,dean).
sits_right_of(lee,dennis).
sits_right_of(george,lee).
sits_right_of(fred,george).
sits_right_of(alicia,fred).
sits_right_of(neville,alicia).
sits_right_of(lavender,neville).
sits_right_of(parvati,lavender).
sits_right_of(katie,parvati).
sits_right_of(natalie,katie).

sits_left_of(natalie,ron).
sits_left_of(ron,hermione).
sits_left_of(hermione,harry).
sits_left_of(harry,colin).
sits_left_of(colin,seamus).
sits_left_of(seamus,angelina).
sits_left_of(angelina,ginny).
sits_left_of(ginny,dean).
sits_left_of(dean,dennis).
sits_left_of(dennis,lee).
sits_left_of(lee,george).
sits_left_of(george,fred).
sits_left_of(fred,alicia).
sits_left_of(alicia,neville).
sits_left_of(neville,lavender).
sits_left_of(lavender,parvati).
sits_left_of(parvati,katie).
sits_left_of(katie,natalie).

are_neighbors_of(X,Y,Z) :- sits_left_of(X,Z), sits_right_of(Y,Z).
next_to_each_other(X,Y) :- sits_right_of(X,Y); sits_left_of(X,Y).