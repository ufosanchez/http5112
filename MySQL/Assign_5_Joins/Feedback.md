# If in this case in part4 we had to search for all the stock_items items in addition to item 1117, this is the query

## I used the keyword UNION since MySQL does not support FULL JOIN

```
{
    SELECT DISTINCT s.item AS "item sale", i.id, i.item, i.price, i.category
    FROM stock_items i LEFT JOIN sales s ON i.id = s.item  
    UNION
    SELECT DISTINCT s.item AS "item sale", i.id, i.item, i.price, i.category
    FROM stock_items i RIGHT JOIN sales s ON i.id = s.item  
    ORDER BY id;
}
```

# 3A -0.5

## When you want to filter out specific values using HAVING, you should use the != operator  a