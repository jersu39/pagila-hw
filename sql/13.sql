/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

select film_id, title, language.language_id, name from language join film on language.language_id = film.language_id where language.language_id = 1 and title ilike 'k%' or title ilike 'q%' group by film_id, title, language.language_id order by title asc;
