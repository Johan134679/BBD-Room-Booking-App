use RoomBookingDB;
GO

SELECT * FROM [dbo].[fu_GetBookingsInRange]('2023-02-21T01:00:00', '2023-04-23T00:00:00', 'meeting room', 'Johannesburg')