SELECT mi.ItemName
FROM menu_items mi
WHERE mi.ItemID = ANY (
    SELECT oi.ItemID
    FROM order_items oi
    GROUP BY oi.ItemID
    HAVING COUNT(*) > 2
);
