### Restaurant_Data_Analysis

![Logo]()


use restaurant_db;
-- 1) View the menu items table

```sqlSELECT *
from menu_items;
```
-- 2.Find the number of items on the menu

```sql SELECT count(*)
from menu_items;
```
-- 3.what are the least and most expensive iteams on the menu

SELECT  *
FROM menu_items
ORDER BY price;

-- 4. how many italian dishes are in the menu

```sqlSELECT  COUNT(*)
FROM menu_items
WHERE category = 'italian';
```
-- 5.what asre the lease and most expensive italian dishes are in the menu

```sqlSELECT *
FROM menu_items
WHERE category = 'italian'
ORDER BY price; 
```
-- 6.how many dishes are in ecah category

SELECT category,COUNT(item_name)
FROM menu_items
GROUP BY category; 

-- 7.what is the avergaae dishes price which each category

SELECT category,AVG(price)
FROM menu_items
GROUP BY category; 
