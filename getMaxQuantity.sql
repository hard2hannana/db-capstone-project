DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxOrderedQuantity`()
BEGIN
    SELECT MAX(Quantity) AS MaxQuantity FROM Orders;
END$$
DELIMITER ;
