/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

select film.title from film_category join film on film_category.film_id = film.film_id join category on category.category_id = film_category.category_id where category.name = 'Family' group by film.title order by film.title asc;
