DELIMITER $$

CREATE PROCEDURE GetCustomerOrders(IN id INT)
BEGIN
    SELECT OrderID, Quantity, OrderCost
    FROM Orders
    WHERE CustomerID = id;
END$$

DELIMITER ;
