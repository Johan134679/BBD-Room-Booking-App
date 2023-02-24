use master;
GO

DROP DATABASE IF EXISTS RoomBookingDB; --Ensure starting off with a clean slate

CREATE DATABASE RoomBookingDB
GO

USE RoomBookingDB;
GO

CREATE TABLE [dbo].[bookings](
    [booking_id] [int] IDENTITY(1,1) NOT NULL,
    [description] [varchar](120) NOT NULL,
    [room_id] [int] NOT NULL,
    [staff_id] [int] NOT NULL,
    [start_date] [date] NOT NULL,
	[start_time] [time] NOT NULL,
    [duration] [int] NOT NULL
);
GO

ALTER TABLE dbo.bookings
ADD CONSTRAINT [PK_bookings] PRIMARY KEY CLUSTERED ([booking_id] ASC);
GO

CREATE TABLE [dbo].[staff](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar] (80) NOT NULL,
	[last_name] [varchar] (80) NOT NULL,
	[job_id] [int] NOT NULL
);
GO

ALTER TABLE dbo.staff
ADD CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED ([staff_id] ASC);
GO

CREATE TABLE [dbo].[jobs](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[job_title] [varchar] (220) NOT NULL
);
GO

ALTER TABLE dbo.jobs
ADD CONSTRAINT [PK_jobs] PRIMARY KEY CLUSTERED ([job_id] ASC);
GO

CREATE TABLE [dbo].[rooms](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[office_id] [int] NOT NULL,
	[room_name] [varchar] (80) NOT NULL,
	[room_type_id] [int] NOT NULL
);
GO

ALTER TABLE dbo.rooms
ADD CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED ([room_id] ASC);
GO

CREATE TABLE [dbo].[room_types](
	[room_type_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar] (120) NOT NULL
);
GO

ALTER TABLE dbo.room_types
ADD CONSTRAINT [PK_room_types] PRIMARY KEY CLUSTERED ([room_type_id] ASC);
GO

CREATE TABLE [dbo].[offices](
	[office_id] [int] IDENTITY(1,1) NOT NULL,
	[city] [varchar] (90) NOT NULL
);
GO

ALTER TABLE dbo.offices
ADD CONSTRAINT [PK_offices] PRIMARY KEY CLUSTERED ([office_id] ASC);
GO

--Create foreign keys
ALTER TABLE dbo.bookings  WITH CHECK ADD  CONSTRAINT [FK_bookings_rooms] FOREIGN KEY([room_id])
REFERENCES dbo.rooms ([room_id])
GO
ALTER TABLE dbo.bookings CHECK CONSTRAINT [FK_bookings_rooms]
GO

ALTER TABLE dbo.bookings  WITH CHECK ADD  CONSTRAINT [FK_bookings_staff] FOREIGN KEY([staff_id])
REFERENCES dbo.staff ([staff_id])
GO
ALTER TABLE dbo.bookings CHECK CONSTRAINT [FK_bookings_staff]
GO

ALTER TABLE dbo.staff  WITH CHECK ADD  CONSTRAINT [FK_staff_jobs] FOREIGN KEY([job_id])
REFERENCES dbo.jobs ([job_id])
GO
ALTER TABLE dbo.staff CHECK CONSTRAINT [FK_staff_jobs]
GO

ALTER TABLE dbo.rooms  WITH CHECK ADD  CONSTRAINT [FK_rooms_offices] FOREIGN KEY([office_id])
REFERENCES dbo.offices ([office_id])
GO
ALTER TABLE dbo.rooms CHECK CONSTRAINT [FK_rooms_offices]
GO

ALTER TABLE dbo.rooms  WITH CHECK ADD  CONSTRAINT [FK_rooms_types] FOREIGN KEY([room_type_id])
REFERENCES dbo.room_types ([room_type_id])
GO
ALTER TABLE dbo.rooms CHECK CONSTRAINT [FK_rooms_types]
GO


-- FUNCTIONS
DROP FUNCTION IF EXISTS [dbo].[fu_GetBookingsInRange] 
GO
CREATE FUNCTION [dbo].[fu_GetBookingsInRange](
		@StartDate date = '2023-02-23',
		@StartTime time = '00:00:00',
		@EndDate date   = '2023-03-23',
		@EndTime time = '11:00:00',
		@RoomType varchar(40) = 'Meeting',
		@City varchar(90) = 'Johannesburg'
	)
	RETURNS TABLE
	AS RETURN
	SELECT b.booking_id, s.first_name, s.last_name, b.description, b.start_date, b.start_time, r.room_name, t.type, o.city
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
		(b.start_date) BETWEEN @StartDate AND @EndDate
		AND (b.start_time BETWEEN @StartTime AND @EndTime)
		AND UPPER(t.type) = UPPER(@RoomType)
		AND (UPPER(o.city) = UPPER(@City))
GO
--
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

--Procedures
DROP PROCEDURE IF EXISTS [dbo].[uspRoomTypesPerOffice]

GO

CREATE PROCEDURE [dbo].[uspRoomTypesPerOffice]
	@office_id int =1,
	@type_id int =1
AS
	
	SELECT COUNT(*) FROM [dbo].[udfRoomTypesPerOffice](@office_id, @type_id)
GO

--VIEWS
DROP VIEW IF EXISTS vBookingsPune;
GO
CREATE VIEW vBookingsPune
AS
	SELECT booking_id, 
		first_name, 
		last_name, 
		room_name, 
		start_date, 
		duration,
		city
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
		WHERE dbo.offices.city = 'Pune'
			AND start_date > GETDATE()
GO

DROP VIEW IF EXISTS vBookingsPTA;
GO
CREATE VIEW vBookingsPTA
AS
	SELECT booking_id, 
	first_name, 
	last_name, 
	room_name, 
	start_date, 
	duration,
	city
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
	WHERE dbo.offices.city = 'Pretoria'
	AND start_date > GETDATE()
GO

DROP VIEW IF EXISTS vBookingsLON;
GO
CREATE VIEW vBookingsLON
AS
	SELECT booking_id, 
	first_name, 
	last_name, 
	room_name, 
	start_date, 
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
	WHERE dbo.offices.city = 'London'
		AND start_date > GETDATE()
GO

DROP VIEW IF EXISTS vBookingsJHB;
GO
CREATE VIEW vBookingsJHB
AS
	SELECT booking_id, 
	first_name, 
	last_name, 
	room_name, 
	start_date, 
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
	WHERE dbo.offices.city = 'Johannesburg'
		AND start_date > GETDATE()
GO

DROP VIEW IF EXISTS vBookingsCPT;
GO
CREATE VIEW vBookingsCPT
AS
	SELECT booking_id, 
	first_name, 
	last_name, 
	room_name, 
	start_date, 
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
	WHERE dbo.offices.city = 'Cape Town'
		AND start_date > GETDATE()
GO

DROP VIEW IF EXISTS vBookingsAMS;
GO
CREATE VIEW vBookingsAMS
AS
	SELECT booking_id, 
	first_name, 
	last_name, 
	room_name, 
	start_date, 
	duration,
	city
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
		AND start_date > GETDATE()
GO