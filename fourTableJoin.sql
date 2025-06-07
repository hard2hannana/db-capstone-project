SELECT 
    c.CustomerID,
    c.Name,
    o.OrderID,
    o.BillAmount,
    m.MenuName,
    mi.Name,
    mi.Category
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN menus m ON o.MenuID = m.MenuID
JOIN menu_items mi ON m.ItemID = mi.ItemID
WHERE o.BillAmount > 150
ORDER BY o.BillAmount ASC;
