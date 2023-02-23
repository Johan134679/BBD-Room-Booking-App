use RoomBookingDB;
GO

DROP PROCEDURE IF EXISTS [dbo].[uspRoomTypesPerOffice]

GO

CREATE PROCEDURE [dbo].[uspRoomTypesPerOffice]
	@office_id int =1,
	@type_id int =1
AS
	
	SELECT COUNT(*) FROM [dbo].[udfRoomTypesPerOffice](@office_id, @type_id)
GO