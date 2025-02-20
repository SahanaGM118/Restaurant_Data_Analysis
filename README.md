# Restaurant_Data_Analysis

![Logo](C:\Users\Sahana G M\OneDrive\Desktop\SQL\Projects data_sets\Restaurant+Orders+MySQL)


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
