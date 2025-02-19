-- 1.joiing both tables

SELECT *
FROM menu_items m
RIGHT JOIN order_details o
ON m.menu_item_id=o.item_id;

-- 2.what are the least and most ordered items ? what categories were they in?alter

SELECT COUNT(order_details_id) number_puchases ,item_name,category
FROM menu_items m
RIGHT JOIN order_details o
ON m.menu_item_id=o.item_id
GROUP BY item_name,category
ORDER BY number_puchases;

-- 3.what are the top 5 order that spend the most of the money?


SELECT order_id,SUM(PRICE) AS total_price
FROM menu_items m
JOIN order_details o
ON m.menu_item_id=o.item_id
GROUP BY order_id
ORDER BY total_price DESC
LIMIT 5;


-- 4.view the detials of the highets spend highets orders? what insight you gather from it?

SELECT category,count(item_id) AS num_items
FROM menu_items m
JOIN order_details o
ON m.menu_item_id=o.item_id
WHERE order_id=440
GROUP BY  category;

-- 5.view the detials of the top 5 highets spend orders? what insight you gather from it?

SELECT order_id,category,count(item_id) as num_items
FROM menu_items m
JOIN order_details o
ON m.menu_item_id=o.item_id
WHERE order_id IN ( 330,440,1957,2075,2675)
GROUP BY  order_id,category

