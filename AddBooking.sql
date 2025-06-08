DELIMITER //

CREATE PROCEDURE AddBooking(
	IN as_customer_id INT,
    IN as_booking_time DATETIME,
    IN as_table_number INT    
)
BEGIN
	INSERT INTO bookings(customer_id, booking_time, table_number)
    VALUES (as_customer_id, as_booking_time, as_table_number);
END //

DELIMITER ;