%%List is empty so all_as works
all_as([]).


%% first element of list is an a. check whether the tail is all a's ->
%% recursively call tail list to see if it also contains a's
all_as([a|Tail]) :- all_as(Tail).
