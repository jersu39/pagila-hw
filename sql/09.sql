/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

select first_name, last_name, sum(amount) as sum from staff join payment on staff.staff_id = payment.staff_id where payment.payment_date >= '1/1/2020' and payment.payment_date < '2/1/2020' group by staff.staff_id order by last_name asc;
