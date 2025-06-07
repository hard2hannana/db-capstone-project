CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, BillAmount
FROM orders
WHERE Quantity > 2;
