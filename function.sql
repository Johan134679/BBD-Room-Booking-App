use RoomBookingDB;
GO

CREATE FUNCTION [dbo].[fu_GetBookingsInRange](
@StartDate datetime = '2023-02-23T00:00:00',
@EndDate datetime   = '2023-03-23T11:00:00',
@RoomType int = 1,
@Office int = 1
)
RETURNS TABLE
AS RETURN
SELECT dbo.bookings.booking_id, dbo.staff.first_name, dbo.staff.last_name, dbo.bookings.description, dbo.bookings.start_time, dbo.rooms.room_name, dbo.room_types.type, dbo.offices.city
FROM dbo.bookings FULL JOIN dbo.rooms
ON dbo.bookings.room_id = dbo.rooms.room_id
FULL JOIN dbo.room_types
ON dbo.room_types.room_type_id = dbo.room_types.room_type_id
FULL JOIN dbo.offices
ON dbo.rooms.office_id = dbo.offices.office_id
FULL JOIN dbo.staff
ON dbo.bookings.staff_id = dbo.staff.staff_id
WHERE dbo.bookings.start_time BETWEEN @StartDate AND @EndDate
AND dbo.room_types.room_type_id = @RoomType
AND dbo.offices.office_id = @Office

GO

-- 2023-02-22T00:00:00
-- 2023-02-23T23:59:00