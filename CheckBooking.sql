DELIMITER //

CREATE PROCEDURE CheckBooking(
    IN bookingDate DATE,
    IN tableNum INT
)
BEGIN
    DECLARE tableStatus VARCHAR(100);

    IF EXISTS (
        SELECT 1
        FROM bookings
        WHERE DATE(booking_time) = bookingDate
          AND table_number = tableNum
          
    )
    THEN
        SET tableStatus = CONCAT('Table ', tableNum, ' is already Booked');
    ELSE
        SET tableStatus = CONCAT('Table ', tableNum, ' is Open');
    END IF;

    SELECT tableStatus AS 'Booking Status';
END //

DELIMITER ;
