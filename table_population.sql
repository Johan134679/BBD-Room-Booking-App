INSERT INTO dbo.room_types (type) VALUES ('Conference Room');
INSERT INTO dbo.room_types (type) VALUES ('Board room');
INSERT INTO dbo.room_types (type) VALUES ('Meeting room');
select * from dbo.room_types;
INSERT INTO dbo.offices (city) VALUES ('Johannesburg');
INSERT INTO dbo.offices (city) VALUES ('Pretoria');
INSERT INTO dbo.offices (city) VALUES ('Cape Town');
INSERT INTO dbo.offices (city) VALUES ('Pune');
INSERT INTO dbo.offices (city) VALUES ('London');
INSERT INTO dbo.offices (city) VALUES ('Amsterdam');

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-1', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-2', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-3', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-4', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-5', 2);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-1', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-2', 3);

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-1', 2);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-2', 2);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-3', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-4', 3);

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '1-1', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '1-2', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '2-1', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '2-2', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '3-1', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '3-2', 3);

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '1-1', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '1-2', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '2-1', 3);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '2-2', 3);

INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (5, '1-1', 1);
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (6, '1-1', 1);

INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Elijah', 'Wood', 'JSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Sean', 'Astin', 'JSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Billy', 'Boyd', 'JSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Dominic', 'Monaghan', 'JSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Viggo', 'Mortensen', 'SSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Sean', 'Bean', 'SSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Zooey', 'Deschanel', 'SSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Jake', ' Johnson', 'BA');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Max', 'Greenfield', 'UI/UX');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Hannah', 'Simone', 'Intern');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Nasim', 'Pedrad', 'SSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Lamorne', 'Morris', 'JSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Courtney', 'Cox', 'UI/UX');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Matthew', 'Perry', 'BA');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Cobie', 'Smulders', 'SSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Alyson', 'Hannigan', 'SSE');
INSERT INTO dbo.staff (first_name, last_name, job) VALUES ('Jason', 'Segel', 'Legal');

INSERT INTO dbo.bookings(description, room_id, staff_id, start_time, duration) VALUES ('Conference call', 1, 1, '2023-02-22T14:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_time, duration) VALUES ('Meeting', 1, 4, '2023-02-22T15:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_time, duration) VALUES ('Meeting', 6, 2, '2023-02-21T14:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_time, duration) VALUES ('Meeting', 14, 3, '2023-02-24T09:30:00', 60);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_time, duration) VALUES ('Peer programming', 2, 10, '2023-03-01T10:30:00', 30);