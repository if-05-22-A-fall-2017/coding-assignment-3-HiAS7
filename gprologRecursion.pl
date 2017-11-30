prepend(X, L, [X|L]).
append([],X,[X]).
append([H|T],X,[H|extendedTail]) :- append(T,X,extendedTail).
length([],0).
length([H|T],X + 1) :- length([T],X).
remove([],X,[]).
remove([X|T],X,T).
remove([H|T],X, [H|U]):- remove(T,X,U).