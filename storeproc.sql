DROP PROCEDURE IF EXISTS [dbo].[uspRoomTypesPerOffice]

DROP PROCEDURE IF EXISTS [dbo].[uspDeleteBooking]

GO

CREATE PROCEDURE [dbo].[uspRoomTypesPerOffice]
	@office_id int =1,
	@type_id int =2
AS
	SELECT o.office_id, rt.room_type_id, r.room_id, o.city, r.room_name, rt.type
	FROM [dbo].[rooms] AS r
	INNER JOIN [dbo].[offices] AS o
	ON r.office_id=o.office_id
	INNER JOIN [dbo].[room_types] AS rt
	ON r.room_type_id=rt.room_type_id

	WHERE (o.office_id=@office_id) AND (rt.room_type_id=@type_id)
GO

CREATE PROCEDURE uspDeleteBooking 
@booking_id int
AS
	DELETE FROM [dbo].bookings
	WHERE booking_id= @booking_id
GO
