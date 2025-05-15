USE MAVENMOVIES;

-- QUERY 1 We will need a list of all staff members, including their first and last names,  email addresses, and the store identification number where they work. 

SELECT STAFF_ID, FIRST_NAME, LAST_NAME, EMAIL, STORE_ID 
FROM STAFF;

-- QUERY 2 We will need separate counts of inventory items held at your two stores. 

SELECT STORE_ID, COUNT(INVENTORY_ID) AS COUNT_ITEM FROM INVENTORY 
GROUP BY 1;

-- QUERY 3 We will need a count of active customers for each of your stores. Separately, please. 

select store_id, count(*) as active_customers from customer 
where active = 1
group by 1;

-- QUERY 4 In order to assess the liability of a data breach, we will need you to provide a count of all customer email addresses stored in the database. 

SELECT COUNT(EMAIL)  FROM CUSTOMER;

-- QUERY 5 We are interested in how diverse your film offering is as a means of understanding how likely you are to keep customers engaged in the future. Please provide a count of unique film titles you have in inventory at each store and then provide a count of the unique categories of films you provide. 


SELECT COUNT(B.CATEGORY_ID) ,COUNT(A.TITLE), A.FILM_ID FROM FILM A 
INNER JOIN FILM_CATEGORY B	
USING (FILM_ID) GROUP BY 3;


-- QUERY 6 We would like to understand the replacement cost of your films. Please provide the replacement cost for the film that is least expensive to replace, the most expensive to replace, and the average of all films you carry. 	

select MIN(replacement_cost) AS MINIMUM_REPLACEMENT, MAX(REPLACEMENT_COST) AS MXIMUM_COST, ROUND(AVG(REPLACEMENT_COST), 2) AS AVG_COST 
FROM FILM;

-- QUERY 7 We are interested in having you put payment monitoring systems and maximum payment processing restrictions in place in order to minimize the future risk of fraud by your staff. Please provide the average payment you processed, as well as the maximum payment you have processed.

select avg(amount) as avg_payment, max(amount) as max_payment from payment;

-- QUERY 8 We would like to better understand what your customer base looks like. Please provide a list of all customer identification values, with a count of rentals they have made at all-time, with your highest volume customers at the top of the list.

SELECT CUSTOMER_ID ,COUNT(CUSTOMER_ID) FROM RENTAL GROUP BY 1 
ORDER BY 2 DESC;

-- END