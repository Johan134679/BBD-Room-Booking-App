use RoomBookingDB;
GO
DROP FUNCTION IF EXISTS [dbo].[udfRoomTypesPerOffice] 
GO
CREATE FUNCTION [dbo].[udfRoomTypesPerOffice](
@office_id int =1,
	@type_id int =2
)
RETURNS TABLE
AS RETURN
SELECT o.office_id, rt.room_type_id, r.room_id, o.city, r.room_name, rt.type
	FROM [dbo].[rooms] AS r
	INNER JOIN [dbo].[offices] AS o
	ON r.office_id=o.office_id
	INNER JOIN [dbo].[room_types] AS rt
	ON r.room_type_id=rt.room_type_id

	WHERE (o.office_id=@office_id) AND (rt.room_type_id=@type_id)
GO

-- 2023-02-22T00:00:00
-- 2023-02-23T23:59:00