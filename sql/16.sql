/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */

select film.title, sum(payment.amount) as profit
from payment
join rental on payment.rental_id = rental.rental_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
group by film.title
order by profit desc;
