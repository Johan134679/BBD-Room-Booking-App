use RoomBookingDB;
GO

CREATE PROCEDURE [dbo].[sp_GetBookingsInRange]
@StartDate datetime = '2023-02-22T00:00:00',
@EndDate datetime = '2023-02-23T23:59:00',
@RoomType int = NULL,
@Office int = NULL
AS
BEGIN
SELECT dbo.bookings.booking_id, dbo.bookings.description, dbo.rooms.room_name
FROM dbo.bookings FULL JOIN dbo.rooms
ON dbo.bookings.room_id = dbo.rooms.room_id
WHERE dbo.bookings.start_time BETWEEN @StartDate AND @EndDate

END
GO

-- 2023-02-22T00:00:00
-- 2023-02-23T23:59:00