%Q:myAppend(3,[],R).
%false 
myAppend(X,[],[X]).
%Q:myAppend(3,[],R).
%R = [3]
%false. how can we prevent this false?
myAppend(X,[H|T], [X, H|T]).
%Q: myAppend(3,[1,2,5],R)
%R = [3,1,2,5]
myAppend(X,[],[X]) :- !.



