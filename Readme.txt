Problem #1: (20 points)
Given the following knowledgebase, draw a search tree for the given query.
Knowledgebase
1. female(mia).
2. female(sally).
3. male(john).
4. male(jack).
5. parent(mia, sally).
6. parent(john, sally).
7. parent(jack, john).
8. father(X, Y) :- male(X), parent(X, Y). 9. mother(X, Y) :- female(X), parent(X, Y).
10. grandfather(X, Y) :- father(X, Z), parent(Z, Y). 11. grandmother(X, Y) :- mother(X, Z), parent(Z, Y).
Query
     grandfather(X, Y).
Problem #2: (10 points)
Write a Prolog predicate called even(X) that unifies to true if X is even and false otherwise.
Problem #3: (20 points)
Tom dislikes anyone in the third year who likes Dave. Dave only likes hard workers and first years. Pete and Nigel are in the first year, Sam and Jane are in the third year. Sam and Pete dislike Dave and like Tom. Jane likes Dave. Pete, Nigel and Jane are all hard workers.
Write a Prolog program to express the facts and rules and find out: Who does Tom dislike? Attach the listing of your code and a screenshot of the answer.
1
Problem #4: (20 points)
The following knowledgebase belongs to a sales system. Write the appropriate Prolog rules and run the queries. Attach the listing of your code and a screenshot of the answers.
Requirements:
1. Good Credit: is a credit rate above (including) 500.
2. Valid Order: is an order that the customer is a valid customer (exist in the knowledgebase) with a good credit rating and also the item should exist in the stock and the quantity should be less than the quantity in the stock.
Knowledgebase
% Orders: order(customer_name, item_name, quantity). order(david, tv, 1).
order(john, dvd_player, 1).
order(david, camera, 2).
order(tom, cell_phone, 1).
order(david, cell_phone, 1).
order(tom, tv, 2).
order(sam, camera, 3).
order(sam, tv, 1).
order(dave, camera, 2).
order(dave, dvd_player, 1).
% Customers: customer(name, credit_rating). customer(david, 600).
customer(john, 300).
customer(tom, 700).
customer(sam, 500).
customer(dave, 650).
% inventory: item(name, quantity_in_stock)
item(tv, 2).
item(dvd_player, 1).
item(camera, 5).
item(cell_phone, 2).
Queries
1. All customers who have good credits. (5 points)
2. All orders that are valid. (Note that we don't process the orders and just are creating a
report of the valid orders.) (5 points)
3. All items that Dave is going to buy. (5 points)
4. All customers who want to buy DVD player. (5 points)