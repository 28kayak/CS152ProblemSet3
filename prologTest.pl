%Problem 3
likes(dave, jane).
first(pete).
first(nigel).
third(sam).
third(jane).
dislike(dave,sam).
dislike(dave,pete).
like(tom, sam).
like(tom, pete).
like(dave, jane).
hardworker(jane).
hardworker(pete).
hardworker(nigel).
dislike(X) :- hardworker(X), third(X), likes(dave, X).

%problem2
even(E) :- X is mod(E,2), X = 0.
%problem 4
% Orders: order(customer_name, item_name, quantity). 
order(david, tv, 1).
order(john, dvd_player, 1).
order(david, camera, 2).
order(tom, cell_phone, 1).
order(david, cell_phone, 1).
order(tom, tv, 2).
order(sam, camera, 3).
order(sam, tv, 1).
order(dave, camera, 2).
order(dave, dvd_player, 1).
% Customers: customer(name, credit_rating). 
customer(david, 600).
customer(john, 300).
customer(tom, 700).
customer(sam, 500).
customer(dave, 650).
% inventory: item(name, quantity_in_stock)
item(tv, 2).
item(dvd_player, 1).
item(camera, 5).
item(cell_phone, 2).
%Query
goodCredit(X) :- customer(X, N), N >= 500.
validOrder(X,Y) :- goodCredit(X), order(X,Y,Z), item(Y,N), N >= Z.
dvdOrder(X) :- order(X,dvd_player,_).



female(mia).
female(sally).
male(john).
male(jack). 
parent(mia, sally).
parent(john, sally).
parent(jack, john).
father(X, Y) :- male(X), parent(X, Y). 9. mother(X, Y) :- female(X), parent(X, Y).
grandfather(X, Y) :- father(X, Z), parent(Z, Y). 11. grandmother(X, Y) :- mother(X, Z), parent(Z, Y).




