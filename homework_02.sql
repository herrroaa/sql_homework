use sakila;
select * from actor;

-- 1a Display the first and last names of all actors from the table `actor`.
select first_name, last_name from actor;


-- 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column `Actor Name`.
SELECT *, concat( first_name , ' ' , last_name) AS Actor_Name FROM actor;


-- 2a. ID number, first name, and last name of an actor, of whom you know only the first name, "Joe."
SELECT actor_id, first_name , last_name
from actor
where first_name = "Joe";

-- 2b. Find all actors whose last name contain the letters `GEN`:
SELECT actor_id, first_name , last_name
from actor
where first_name like '%GEN%';

-- 2cFind all actors whose last names contain the letters `LI`. This time, order the rows by last name and first name, in that order:


SELECT actor_id, first_name , last_name
from actor
where last_name like '%LI%' 
order by first_name, last_name;

-- 2d. Using `IN`, display the `country_id` and `country` columns of the following countries: Afghanistan, Bangladesh, and China:

use sakila;
select  country_id, country from country
where country in ('Afghanistan', 'Bangladesh', 'China');

-- 3a. Add a `middle_name` column to the table `actor`. Position it between `first_name` and `last_name`. Hint: you will need to specify the data type.

ALTER TABLE actor ADD middle_name VARCHAR(100) not null AFTER first_name;

-- * 3b. You realize that some of these actors have tremendously long last names. Change the data type of the `middle_name` column to `blobs`.

ALTER TABLE actor MODIFY middle_name BLOB;

-- * 3c. Now delete the `middle_name` column.

alter table actor drop column middle_name;
select * from actor;


-- * 4a. List the last names of actors, as well as how many actors have that last name.
-- there are 200 last names

select last_name from actor;
SELECT COUNT(last_name)
FROM actor;


-- * 4b. List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors

-- 4c. Oh, no! The actor `HARPO WILLIAMS` was accidentally entered in the `actor` table as `GROUCHO WILLIAMS`, 
-- the name of Harpo's second cousin's husband's yoga teacher. Write a query to fix the record.

UPDATE actor
SET first_name =  'HARPO'
WHERE first_name = 'GROUCHO'  AND last_name= 'WILLIAMS'; 

-- * 5a. You cannot locate the schema of the `address` table. Which query would you use to re-create it?

-- * 6a. Use `JOIN` to display the first and last names, as well as the address, of each staff member. Use the tables `staff` and `address`:
 
SELECT staff.address_id, staff.first_name, staff.last_name
FROM staff
INNER JOIN address on address.address_id=staff.address_Id;







