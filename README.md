# Restaurant_Data_Analysis

![Logo](restaurant icon.jpg)

## Analysing Items Table

use restaurant_db;
### 1) View the menu items table

```sql SELECT *
from menu_items;
```
-- 2.Find the number of items on the menu

```sql SELECT count(*)
from menu_items;
```
### 3.what are the least and most expensive iteams on the menu

```sql SELECT  *
FROM menu_items
ORDER BY price;
```

### 4. how many italian dishes are in the menu

```sql SELECT  COUNT(*)
FROM menu_items
WHERE category = 'italian';
```
### 5.what asre the lease and most expensive italian dishes are in the menu

```sql SELECT *
FROM menu_items
WHERE category = 'italian'
ORDER BY price; 
```
### 6.how many dishes are in ecah category

```sql SELECT
category,
COUNT(item_name)
FROM menu_items
GROUP BY category;
```

### 7.what is the avergaae dishes price which each category


```sql SELECT
category,
AVG(price)
FROM menu_items
GROUP BY category;
```

# Analysing Order Table

### 1.View order dteails table

```sql SELECT *
FROM order_details;
```

### 2.what is the date range of the table

```sql SELECT *
FROM order_details
ORDER BY order_date;
```

### 3.how many orders were made within this date range

```sql SELECT Count( DISTINCT	order_id) total_orders
FROM order_details;
```

### 4. how many items were orders within this dat_range

```sql SELECT Count(*) total_orders
FROM order_details;
```
### 5.which order had most number of items

```sql SELECT order_id, count(item_id) AS NoOfIteams 
FROM order_details
GROUP BY order_id
ORDER BY  NoOfIteams DESC ;
```

### 6. how many orders had more then 12 item_id

```sql SELECT COUNT(order_id)
FROM (
        SELECT 
            order_id,
            COUNT(item_id) NoOfIteams
        FROM order_details
GROUP BY order_id
HAVING  NoOfIteams >12) AS num_of_orders
```

