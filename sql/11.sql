/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */

select inventory.film_id, film.title, count(inventory.film_id) as count from inventory join film on film.film_id = inventory.film_id where film.title ilike 'h%' group by inventory.film_id, film.title order by film.title desc;
