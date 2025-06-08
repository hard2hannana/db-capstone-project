DELIMITER //

CREATE PROCEDURE UpdateBooking(
	IN as_booking_id INT,
    IN as_booking_time DATETIME
)
BEGIN
	UPDATE bookings
	SET booking_time = as_booking_time
	WHERE booking_id = as_booking_id;

END //

DELIMITER ;