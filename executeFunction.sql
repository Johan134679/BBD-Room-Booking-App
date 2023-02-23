use RoomBookingDB;
GO

SELECT * FROM [dbo].[fu_GetBookingsInRange]('2023-02-21', '01:00:00', '2023-04-23', '10:00:00', 'conference room', 'Johannesburg')