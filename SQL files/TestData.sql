INSERT INTO dbo.room_types (type) VALUES ('Conference Room');
INSERT INTO dbo.room_types (type) VALUES ('Board room');
INSERT INTO dbo.room_types (type) VALUES ('Meeting room');

INSERT INTO dbo.offices (city) VALUES ('Johannesburg');
INSERT INTO dbo.offices (city) VALUES ('Pretoria');
INSERT INTO dbo.offices (city) VALUES ('Cape Town');
INSERT INTO dbo.offices (city) VALUES ('Pune');
INSERT INTO dbo.offices (city) VALUES ('London');
INSERT INTO dbo.offices (city) VALUES ('Amsterdam');

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-1', 1); --1
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-2', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-3', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-4', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-5', 2);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-1', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-2', 3);

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-1', 2); --7
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-2', 2);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-3', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-4', 3);

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '1-1', 1); --11
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '1-2', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '2-1', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '2-2', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '3-1', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '3-2', 3);

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '1-1', 1); --17
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '1-2', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '2-1', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '2-2', 3);

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (5, '1-1', 1); --21

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (6, '1-1', 1); --22

INSERT INTO dbo.jobs (job_title) VALUES ('SSE');
INSERT INTO dbo.jobs (job_title) VALUES ('JSE');
INSERT INTO dbo.jobs (job_title) VALUES ('BA');
INSERT INTO dbo.jobs (job_title) VALUES ('UI/UX');
INSERT INTO dbo.jobs (job_title) VALUES ('Intern');
INSERT INTO dbo.jobs (job_title) VALUES ('Legal');

INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Elijah', 'Wood', 1);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Sean', 'Astin', 1);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Billy', 'Boyd', 1);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Dominic', 'Monaghan', 1);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Viggo', 'Mortensen', 2);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Sean', 'Bean', 2);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Zooey', 'Deschanel', 2);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Jake', ' Johnson', 3);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Max', 'Greenfield', 4);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Hannah', 'Simone', 5);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Nasim', 'Pedrad', 2);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Lamorne', 'Morris', 1);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Courtney', 'Cox', 4);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Matthew', 'Perry', 3);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Cobie', 'Smulders', 2);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Alyson', 'Hannigan', 2);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Jason', 'Segel', 6); --17

INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Conference call', 1, 1, '2023-03-05', '14:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 1, 4, '2023-03-06', '15:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 18, 2, '2023-03-07', '14:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 4, 3, '2023-03-09', '09:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Peer programming', 2, 10, '2023-03-01', '10:30:00', 30);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Peer programming', 5, 11, '2023-03-13', '10:30:00', 30);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Conference call', 22, 15, '2023-03-13', '14:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Conference call', 12, 6,  '2023-04-01', '14:30:00', 60); --
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 1, 1, '2023-03-05', '09:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Stand-up', 21, 9, '2023-03-06', '10:30:00', 30);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 6, 5, '2023-05-07', '07:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 4, 3, '2023-05-09', '09:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Peer programming', 8, 10, '2023-06-01', '10:30:00', 30);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Peer programming', 9, 11, '2023-06-01', '10:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Conference call', 22, 15, '2023-05-01', '14:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Stand-up', 12, 6, '2023-04-01', '14:30:00', 30);

