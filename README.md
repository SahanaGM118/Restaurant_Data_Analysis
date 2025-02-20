# Restaurant_Data_Analysis

![Logo](restaurant_icon.jpg)
## Objective

### *Explore the Items Table to get what's on the New Menu
### *Explore the Order Table to get an idea of the data that's been Collected
### *Use both table to Undarstand how customers are reacting to the New Menu

## Analyzing Items Table

use restaurant_db;
#### 1.View the menu items table

```sql SELECT *
from menu_items;
```
#### 2.Find the number of items on the menu

```sql SELECT count(*)
from menu_items;
```
#### 3.What are the least and most expensive iteams on the menu

```sql SELECT  *
FROM menu_items
ORDER BY price;
```

### 4.How many italian dishes are in the menu

```sql SELECT  COUNT(*)
FROM menu_items
WHERE category = 'italian';
```
### 5.What asre the lease and most expensive italian dishes are in the menu

```sql SELECT *
FROM menu_items
WHERE category = 'italian'
ORDER BY price; 
```
### 6.How many dishes are in ecah category

```sql SELECT
category,
COUNT(item_name)
FROM menu_items
GROUP BY category;
```

### 7.What is the avergaae dishes price which each category


```sql SELECT
category,
AVG(price)
FROM menu_items
GROUP BY category;
```

# Analyzing Order Table

### 1.View order dteails table

```sql SELECT *
FROM order_details;
```

### 2.What is the date range of the table

```sql SELECT *
FROM order_details
ORDER BY order_date;
```

### 3.How many orders were made within this date range

```sql SELECT Count( DISTINCT	order_id) total_orders
FROM order_details;
```

### 4. How many items were orders within this dat_range

```sql SELECT Count(*) total_orders
FROM order_details;
```
### 5.Which order had most number of items

```sql SELECT order_id, count(item_id) AS NoOfIteams 
FROM order_details
GROUP BY order_id
ORDER BY  NoOfIteams DESC ;
```

### 6.How many orders had more then 12 item_id

```sql SELECT COUNT(order_id)
FROM (
        SELECT 
            order_id,
            COUNT(item_id) NoOfIteams
        FROM order_details
GROUP BY order_id
HAVING  NoOfIteams >12) AS num_of_orders
```


# Analyzing Customers Behaviour

### 1.Joiing both tables

```sql
SELECT *
FROM menu_items m
RIGHT JOIN order_details o
ON m.menu_item_id=o.item_id;
```

### 2.What are the least and most ordered items ? what categories were they in?alter

```sql
SELECT COUNT(order_details_id) number_puchases ,item_name,category
FROM menu_items m
RIGHT JOIN order_details o
ON m.menu_item_id=o.item_id
GROUP BY item_name,category
ORDER BY number_puchases;
```

### 3.What are the top 5 order that spend the most of the money?

```sql
SELECT order_id,SUM(PRICE) AS total_price
FROM menu_items m
JOIN order_details o
ON m.menu_item_id=o.item_id
GROUP BY order_id
ORDER BY total_price DESC
LIMIT 5;
```

### 4.View the detials of the highets spend highets orders? what insight you gather from it?

```sql
SELECT category,count(item_id) AS num_items
FROM menu_items m
JOIN order_details o
ON m.menu_item_id=o.item_id
WHERE order_id=440
GROUP BY  category;
```

### 5.View the detials of the top 5 highets spend orders? what insight you gather from it?

```sql
SELECT order_id,category,count(item_id) as num_items
FROM menu_items m
JOIN order_details o
ON m.menu_item_id=o.item_id
WHERE order_id IN ( 330,440,1957,2075,2675)
GROUP BY  order_id,category
```

