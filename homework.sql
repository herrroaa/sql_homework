use sakila;
select * from actor;
select first_name, last_name from actor;
alter table actor add column Actor_Name VARCHAR(500) NOT NULL,
UPDATE actor SET Actor_Name = CONCAT(first_name,  ' ' , last_name);


ALTER TABLE actor ADD COLUMN
Concat(first_name + ' ' +  last_name) AS Actor_Name from actor,
VARCHAR(500) NOT NULL;  

select concat (first_name + ' ' +  last_name) AS Actor_Name from actor;

update actor  set  Actor_Name  (first_name + ' ' +  last_name);

UPDATE Customers
SET ContactName='Juan'








-- ALTER TABLE actor DROP COLUMN Actor_Name;
alter table actor drop column Actor_Name;
