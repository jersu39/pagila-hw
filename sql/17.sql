/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

select country.country, sum(payment.amount) as profit from country
join city on city.country_id = country.country_id
join address on address.city_id = city.city_id
join customer on customer.address_id = address.address_id
join rental on rental.customer_id = customer.customer_id
join payment on payment.rental_id = rental.rental_id
group by country.country
order by country.country asc;
