#Select all the actors with the first name ‘Scarlett’.
#Select all the actors with the last name ‘Johansson’.
#How many films (movies) are available for rent?
#How many films have been rented?
#What is the shortest and longest rental period?
#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
#What's the average movie duration?
#What's the average movie duration expressed in format (hours, minutes)?
#How many movies longer than 3 hours?
#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
#What's the length of the longest film title?

use sakila;
select first_name from actor where first_name = 'Scarlett';
select last_name from actor where last_name = 'Johansson';

select count(inventory_id) from inventory;
select count(rental_date) from rental;
select 
	min(return_date - rental_date) as shortest_period,
    max(return_date - rental_date) as longest_period
from 
	rental;

select
	max(length) as max_duration, min(length) as min_duration
from
	film;
    
select
	avg(length) as average_duration
from film;

select 
	avg(length), concat(floor(avg(length)/60), " h, ", floor(avg(length)% 60)," m") as average_duration 
from film;

select * from film where length / 60 > 3;

select title, length(title) from film order by 2 desc limit 1;   





