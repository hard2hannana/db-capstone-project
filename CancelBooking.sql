DELIMITER //

CREATE PROCEDURE DeleteBooking(
	IN as_booking_id INT
)
BEGIN 
	DELETE FROM bookings
    WHERE booking_id = as_booking_id;
END //

DELIMITER ;