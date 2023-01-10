#-- Using the farmers market - Create a new column based off of cost_to_customer_per_qty.
#-- If the cost was less than or equal to 1 label them as 'Cheap'
#-- If the cost was greater than 1 but less than 5 label them as 'Mid-range'
#-- If the cost was greater than or equal to 5 label them as 'High-end'

USE farmers_market;

SELECT cost_to_customer_per_qty, 
IF(cost_to_customer_per_qty <= 1, 'Cheap',
	IF(cost_to_customer_per_qty >= 5, 'High-end',
    IF(cost_to_customer_per_qty > 1 < 5, 'Mid-range', "Not in Range"))) AS Result FROM customer_purchases;
    
SELECT *,
	CASE
		WHEN cost_to_customer_per_qty <= 1 THEN 'Cheap'
		WHEN cost_to_customer_per_qty >= 5 THEN 'High-end'
		WHEN cost_to_customer_per_qty > 1 AND cost_to_customer_per_qty < 5 THEN 'Mid-range'
	END AS price_category
FROM customer_purchases
ORDER BY cost_to_customer_per_qty
    