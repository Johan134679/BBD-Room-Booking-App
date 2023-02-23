use master;
GO

DROP DATABASE IF EXISTS RoomBookingDB; --Ensure starting off with a clean slate

CREATE DATABASE RoomBookingDB
GO

USE RoomBookingDB;
GO


-- Table Creation 
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




