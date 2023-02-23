--View to get all the bookings for the AMS branch, and relevant info
DROP VIEW IF EXISTS vBookingsAMS;
GO
CREATE VIEW vBookingsAMS
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
LEFT JOIN dbo.offices
ON
dbo.offices.office_id = dbo.rooms.office_id
WHERE dbo.offices.city = 'Amsterdam'
AND start_time > GETDATE()
GO