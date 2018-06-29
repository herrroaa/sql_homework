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





