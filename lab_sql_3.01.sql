-- Activity 1
-- Drop column picture from staff.

SELECT *  FROM sakila.staff; 
ALTER TABLE sakila.staff
DROP COLUMN picture;
SELECT *  FROM sakila.staff;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT * FROM sakila.customer
WHERE first_name = 'TAMMY' AND last_name = 'SANDERS';
INSERT INTO  sakila.staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, last_update)
VALUES (3 ,'TAMMY', 'SANDERS' ,79, 'tommy.sanders@sakilastaff.com', 1, 1, 'Tammy', NOW());
SELECT *  FROM sakila.staff;
 

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
-- select customer_id from sakila.customer
-- where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- Use similar method to get inventory_id, film_id, and staff_id.

SELECT customer_id FROM sakila.customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';
INSERT INTO  sakila.rental ( rental_date, inventory_id, customer_id, staff_id, last_update)
VALUES (NOW(), 1  , 130, 1, NOW());
SELECT *  FROM sakila.rental;



 
