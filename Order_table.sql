-- 1.View order dteails table

SELECT * FROM order_details;

-- 2.what is the date range of the table

SELECT *
FROM order_details
ORDER BY order_date;

-- 3.how many orders were made within this date range

SELECT Count( DISTINCT	order_id) total_orders  FROM order_details;

-- 4. how many items were orders within this dat_range

SELECT Count(*) total_orders  FROM order_details;

-- 5.which order had most number of items

SELECT order_id, count(item_id) AS NoOfIteams 
FROM order_details
GROUP BY order_id
ORDER BY  NoOfIteams DESC ;

-- 6. how many orders had more then 12 item_id

SELECT COUNT(order_id)
FROM (
        SELECT 
            order_id,
            COUNT(item_id) NoOfIteams
        FROM order_details
GROUP BY order_id
HAVING  NoOfIteams >12) AS num_of_orders

