%Prolog does not have a groval variable. 
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

%%%%%% Recursion %%%%%%%%%%%%%%%%%%%%%%% 
%we want to itarate the list one by one 
%KB
Last([_|T],N) :- Last(T,N).

%Q: Last([1,3,5,8], N)
%A: T = [3,5,8] , N = N 
%Q: Last([3,5,8], N)
%A: T = [5,8], N = N
%Q: Last([5,8], N)
%A: T = [8], N = N 
%Q: Last([8], N)
%A: T = [], N = N 
%Q: Last([], N)
%A: T = [], N = N 
%and go forever.......how to stop?  
Last([X],X) :- !. %terminal condition. 
Last([_|T],N) :- Last(T,N).
%%%%%% Recursion %%%%%%%%%%%%%%%%%%%%%%% 
Len([_|T],N) :- Len(T,Z), N is Z+1.

%Q:Len([1,3,5],X).%subgoal_1
%A:T= [3,5], N = X.

%Q:Len([3,5],Z).%subgoal_2
%A:T= [5], N = Z1. %Note: Z1 is different from Z in the KB



