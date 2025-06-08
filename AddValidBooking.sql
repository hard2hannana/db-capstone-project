DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN in_booking_time DATETIME,
    IN in_table_number INT
)
BEGIN
    DECLARE conflict_exists INT DEFAULT 0;

    START TRANSACTION;

    -- Check if the table is already booked at the same date
    SELECT COUNT(*) INTO conflict_exists
    FROM bookings
    WHERE DATE(booking_time) = DATE(in_booking_time)
      AND table_number = in_table_number
      AND status IN ('Confirmed', 'Pending');

    IF conflict_exists > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', in_table_number, ' is already booked - Booking Canceled') AS 'Booking Status';
    ELSE
        -- Insert booking with placeholder/default values
        INSERT INTO bookings (
            booking_time,
            table_number,
            status
        )
        VALUES (
            in_booking_time,
            in_table_number,
            'Confirmed'
        );

        COMMIT;
        SELECT 'Booking successfully added.' AS 'Booking Status';
    END IF;

END //

DELIMITER ;

