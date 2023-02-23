--View to get all the bookings for the JHB branch, and relevant info
DROP VIEW IF EXISTS vBookingsJHB;
GO
CREATE VIEW vBookingsJHB
AS
SELECT booking_id, 
first_name, 
last_name, 
room_name, 
start_time, 
duration
FROM dbo.bookings 
LEFT JOIN dbo.rooms
ON
dbo.bookings.room_id = dbo.rooms.room_id
LEFT JOIN dbo.staff
ON
dbo.bookings.staff_id = dbo.staff.staff_id
WHERE dbo.rooms.office_id = 1
AND start_time > GETDATE()
GO