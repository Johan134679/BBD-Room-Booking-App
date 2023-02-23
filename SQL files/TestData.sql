--Test Data Script

--INSERT INTO dbo.room_types (type) VALUES ('Meeting room');
INSERT INTO dbo.room_types (type) VALUES ('Conference Room');   --1
INSERT INTO dbo.room_types (type) VALUES ('Board room');        --2
INSERT INTO dbo.room_types (type) VALUES ('Meeting room');      --3

--INSERT INTO dbo.offices (city) VALUES  ( 'varchar(90)' );
INSERT INTO dbo.offices (city) VALUES ('Johannesburg');         --1
INSERT INTO dbo.offices (city) VALUES ('Pretoria');             --2
INSERT INTO dbo.offices (city) VALUES ('Cape Town');            --3
INSERT INTO dbo.offices (city) VALUES ('Pune');                 --4
INSERT INTO dbo.offices (city) VALUES ('London');               --5
INSERT INTO dbo.offices (city) VALUES ('Amsterdam');            --6

-- INSERT INTO dbo.rooms(office_id, room_name, room_type_id) VALUES ( int, int, varchar(80), int );
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-1', 1); --1
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-2', 2); --2
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-3', 3); --3
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-4', 1); --4
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-5', 2); --5
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-5', 3); --6
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '1-5', 3); --7
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-1', 3); --8
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-2', 1); --9
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-3', 2); --10
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-4', 3); --11
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-5', 3); --12
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-6', 3); --13
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (1, '2-7', 3); --14
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-1', 1); --15   --Pretoria
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-2', 2); --16
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-3', 3); --17
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-4', 1); --18
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '1-5', 2); --19
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '2-1', 3); --20
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '2-2', 1); --21
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '2-3', 2); --22
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '2-4', 3); --23
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (2, '2-5', 3); --24
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '1-1', 1); --25   --Capetown
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '1-2', 1); --26
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '2-1', 3); --27
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '2-2', 3); --28
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '3-1', 3); --29
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (3, '3-2', 3); --30
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '1-1', 1); --31   --Pune
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '1-2', 1); --32
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '2-1', 3); --33
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (4, '2-2', 3); --34
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (5, '1-1', 1); --35   --London
INSERT INTO dbo.rooms (office_id, room_name, room_type_id) VALUES (6, '1-1', 1); --36   --Amsterdam


--INSERT INTO dbo.jobs (job_title) VALUES ('varchar(220)');
INSERT INTO dbo.jobs (job_title) VALUES ('Senior Software Engineer');   --1      
INSERT INTO dbo.jobs (job_title) VALUES ('Junior Software Engineer');   --2
INSERT INTO dbo.jobs (job_title) VALUES ('Business Analyst');           --3
INSERT INTO dbo.jobs (job_title) VALUES ('UI/UX');                      --4
INSERT INTO dbo.jobs (job_title) VALUES ('Intern');                     --5
INSERT INTO dbo.jobs (job_title) VALUES ('Legal');                      --6
INSERT INTO dbo.jobs (job_title) VALUES ('Executive');                  --7


--INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('varchar(80)', 'varchar(80)', int);
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Sean'    , 'Astin'       , 1);  --1 staff_id
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Elijah'  , 'Wood'        , 1);  --2    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Billy'   , 'Boyd'        , 1);  --3
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Dominic' , 'Monaghan'    , 1);  --4        
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Viggo'   , 'Mortensen'   , 2);  --5    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Sean'    , 'Bean'        , 2);  --6
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Zooey'   , 'Deschanel'   , 2);  --7    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Jake'    , ' Johnson'    , 3);  --8    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Max'     , 'Greenfield'  , 4);  --9    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Hannah'  , 'Simone'      , 5);  --10    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Nasim'   , 'Pedrad'      , 2);  --11    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Lamorne' , 'Morris'      , 1);  --12    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Courtney', 'Cox'         , 4);  --13    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Matthew' , 'Perry'       , 3);  --14    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Cobie'   , 'Smulders'    , 2);  --15    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Alyson'  , 'Hannigan'    , 2);  --16    
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Jason'   , 'Segel'       , 6);  --17 
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Lia'     , 'Hoffman'     , 6);  --18 
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Marie'   , 'Padilla'     , 6);  --19 
INSERT INTO dbo.staff (first_name, last_name, job_id) VALUES ('Kaylee'  , 'PUGH'        , 6);  --20 -Amsterdam 


--INSERT INTO dbo.bookings( description, room_id, staff_id, start_date, start_time, duration) VALUES ('varchar(120)', int, int, 'date', 'time', int);
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Conference call'    , 1     , 1 , '2023-03-05'  , '14:30:00', 60);  --1 booking_id
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting'            , 1     , 4 , '2023-03-06'  , '15:30:00', 60);  --2
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting'            , 18    , 2 , '2023-03-07'  , '14:30:00', 60);  --3
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting'            , 4     , 3 , '2023-03-09'  , '09:30:00', 60);  --4
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Peer programming'   , 2     , 10, '2023-03-01'  , '10:30:00', 30);  --5
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Peer programming'   , 5     , 11, '2023-03-13'  , '10:30:00', 30);  --6
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Conference call'    , 22    , 15, '2023-03-13'  , '14:30:00', 60);  --7
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Conference call'    , 12    , 6 ,  '2023-04-01' , '14:30:00', 60);  --8
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting'            , 1     , 1 , '2023-03-05'  , '09:30:00', 60);  --9
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Stand-up'           , 21    , 9 , '2023-03-06'  , '10:30:00', 30);  --10
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting'            , 6     , 5 , '2023-05-07'  , '07:30:00', 60);  --11
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting'            , 4     , 3 , '2023-05-09'  , '09:30:00', 60);  --12
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Peer programming'   , 8     , 10, '2023-06-01'  , '10:30:00', 30);  --13
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Peer programming'   , 9     , 11, '2023-06-01'  , '10:30:00', 60);  --14
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Conference call'    , 22    , 15, '2023-05-01'  , '14:30:00', 60);  --15
INSERT INTO dbo.bookings(description, room_id, staff_id, start_date, start_time, duration) VALUES ('Stand-up'           , 12    , 6 , '2023-04-01'  , '14:30:00', 30);  --16

--Amsterdam Bookings
INSERT INTO dbo.bookings( description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 23, 20, '2023-03-02', '09:00:00', 60);
INSERT INTO dbo.bookings( description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 23, 20, '2023-03-02', '12:00:00', 60);
INSERT INTO dbo.bookings( description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 23, 20, '2023-03-09', '11:00:00', 60);
INSERT INTO dbo.bookings( description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 23, 20, '2023-03-16', '10:00:00', 60);
INSERT INTO dbo.bookings( description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 23, 20, '2023-03-23', '08:00:00', 60);
INSERT INTO dbo.bookings( description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 23, 20, '2023-04-02', '12:00:00', 60);
INSERT INTO dbo.bookings( description, room_id, staff_id, start_date, start_time, duration) VALUES ('Meeting', 23, 20, '2023-03-05', '14:00:00', 60);
