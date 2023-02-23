use RoomBookingDB;
GO
DROP FUNCTION IF EXISTS [dbo].[fu_GetBookingsInRange] 
GO
CREATE FUNCTION [dbo].[fu_GetBookingsInRange](
@StartDate datetime = '2023-02-23T00:00:00',
@EndDate datetime   = '2023-03-23T11:00:00',
@RoomType varchar(40) = 'Meeting',
@City varchar(85) = 'Johannesburg'
)
RETURNS TABLE
AS RETURN
SELECT b.booking_id, s.first_name, s.last_name, b.description, b.start_time, r.room_name, t.type, o.city
FROM dbo.bookings AS b 
LEFT JOIN dbo.rooms AS r
ON b.room_id = r.room_id
left JOIN dbo.room_types AS t
ON r.room_type_id = t.room_type_id
left JOIN dbo.offices AS o
ON r.office_id = o.office_id
left JOIN dbo.staff as s
ON b.staff_id = s.staff_id
WHERE 
(b.start_time BETWEEN @StartDate AND @EndDate)
AND UPPER(t.type) = UPPER(@RoomType)
AND (UPPER(o.city) = UPPER(@City)	)
GO

-- 2023-02-22T00:00:00
-- 2023-02-23T23:59:00