-- Question # 1

SELECT * FROM actor WHERE last_name = 'Wahlberg'; 
-- -- Answer: 2 Walbergs

-- -- Question # 2 
SELECT COUNT(amount) FROM payment WHERE amount >= 3.99 and amount <= 5.99;
-- Answer: 5607

-- Question # 3
SELECT film_id, COUNT(*) FROM inventory GROUP BY film_id ORDER BY count DESC;
-- Answer: 8 is the large group of copies

-- Question # 4
SELECT * FROM customer WHERE last_name = 'William';
-- Answer: 0

-- Question # 5
SELECT staff_id, COUNT(staff_id) FROM rental GROUP BY staff_id;
-- Answer: staff_id 1

-- Question # 6
SELECT COUNT(DISTINCT district) FROM address;
-- answer: 378

-- Question # 7
SELECT actor_id, COUNT(*) FROM film_actor GROUP BY actor_id ORDER BY count DESC;
-- Answer: actor_id 107 with 42 films

-- Question # 8
SELECT COUNT(last_name) FROM customer WHERE store_id = 1 and last_name LIKE '%es';
-- Answer: 13

-- Question # 9

SELECT COUNT(amount) FROM payment WHERE customer_id >= 380 and customer_id <= 430;
SELECT inventory_id, COUNT(*) FROM rental GROUP BY inventory_id;
-- answer: I couldn't figure out how to get the number of rentals? I tried on the second query with no luck.


-- Question # 10
SELECT COUNT(DISTINCT rating) FROM film;
SELECT rating, COUNT(*) FROM film GROUP BY rating ORDER BY count DESC;
-- Answer: There are 5 categories(first query) And PG-13 has the most movies at 223(second query)