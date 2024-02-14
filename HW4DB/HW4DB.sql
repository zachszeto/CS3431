INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (1 , 'arslanay@wsu.edu', 'Sakire', 'ArslanAy'); 
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (2 , 'cook@wsu.edu', 'Diane', 'Cook');    
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (3 , 'hauser@wsu.edu', 'Carl', 'Hauser');   
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (4 , 'zeng@wsu.edu', 'Bolong', 'Zeng'); 
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (5 , 'tyler@wsu.edu', 'Tyler', 'Walker');  
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (6 , 'ofallon@wsu.edu', 'Andy', 'OFallon');  
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (7 , 'wang@wsu.edu','KC', 'Wang'); 
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (8 , 'lucas@wsu.edu', 'Lucas', 'Mason');    
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (9 , 'noel@wsu.edu', 'Noel', 'Sam');   
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (10, 'andy@wsu.edu', 'Andy', 'White');  
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (11, 'arnaoudova@wsu.edu', 'Venera' , 'Arnaoudova');    
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (12, 'rea@wsu.edu', 'Rae', 'Marks');    	
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (13, 'rachel@wsu.edu', 'Rachel', 'Forbes');  
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (14, 'jacob@wsu.edu', 'Jacob', 'Lee');    
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (15, 'travis@wsu.edu', 'Travis', 'Person');    
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (16, 'min@wsu.edu', 'Min', 'Quin');    
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (17, 'kelly@wsu.edu', 'Kelly', 'Easton');   
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (18, 'amy@wsu.edu', 'Amy', 'Fan');    	
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (19, 'ben@wsu.edu', 'Ben', 'Hill');    
INSERT INTO Users  (user_id, email, firstname, lastname) VALUES (20, 'connor@wsu.edu', 'Connor', 'Hall');    		


INSERT INTO Instructor (instructor_id, title) VALUES (1 , 'Associate Professor');    
INSERT INTO Instructor (instructor_id, title) VALUES (11 , 'Associate Professor'); 
INSERT INTO Instructor (instructor_id, title) VALUES (2 , 'Regents Professor');    
INSERT INTO Instructor (instructor_id, title) VALUES (3 , 'Professor');    
INSERT INTO Instructor (instructor_id, title) VALUES (4 , 'Assistant Professor'); 
INSERT INTO Instructor (instructor_id, title) VALUES (6 , 'Professor');    
INSERT INTO Instructor (instructor_id, title) VALUES (7 , 'Professor'); 


INSERT INTO Student  (student_id) VALUES (5);
INSERT INTO Student  (student_id) VALUES (8);
INSERT INTO Student  (student_id) VALUES (9);
INSERT INTO Student  (student_id) VALUES (10);
INSERT INTO Student  (student_id) VALUES (12);
INSERT INTO Student  (student_id) VALUES (13);
INSERT INTO Student  (student_id) VALUES (14);
INSERT INTO Student  (student_id) VALUES (15);
INSERT INTO Student  (student_id) VALUES (16);
INSERT INTO Student  (student_id) VALUES (17);
INSERT INTO Student  (student_id) VALUES (18);
INSERT INTO Student  (student_id) VALUES (19);
INSERT INTO Student  (student_id) VALUES (20);

INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (11  , 'Software Engineering');
INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (11  , 'Software Testing');	
INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (2 , 'Artificial Intelligence');   
INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (2 , 'Machine Learning');   	
INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (2 , 'Data Mining');   	  
INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (3 , 'Machine Learning');   
INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (3 , 'Data Mining');
INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (3 , 'Artificial Intelligence');	
INSERT INTO AcademicFields  (instructor_id,academicfield) VALUES (4 , 'Assistant Professor');


INSERT INTO Course (course_id, title, description) VALUES ('CS321'  , 'Object-Oriented Software Principles' , 'Undergraduate');
INSERT INTO Course (course_id, title, description) VALUES ('CS322'  , 'Software Engineering Principles I '  , 'Undergraduate');
INSERT INTO Course (course_id, title, description) VALUES ('CS451'  , 'Introduction To Data Management' , 'Undergraduate');
INSERT INTO Course (course_id, title, description) VALUES ('CS355'  , 'Programming Language Design' , 'Undergraduate');
INSERT INTO Course (course_id, title, description) VALUES ('CS437'  , 'Introduction to Machine Learning'    , 'Undergraduate');
INSERT INTO Course (course_id, title, description) VALUES ('CS215'  , 'Data Analytics Systems and Algorithms' , 'Undergraduate'); 
INSERT INTO Course (course_id, title, description) VALUES ('MA412'  , 'Statistical Methods in Research I'   , 'Undergraduate'); 
INSERT INTO Course (course_id, title, description) VALUES ('CS360'  , 'Systems Programming'   , 'Undergraduate');   
INSERT INTO Course (course_id, title, description) VALUES ('CS460'  , 'Operating Systems' , 'Undergraduate');    
INSERT INTO Course (course_id, title, description) VALUES ('CS581'  , 'Software Maintenance'  , 'Graduate');   
INSERT INTO Course (course_id, title, description) VALUES ('CS415'  , 'Big Data'    , 'Undergraduate'); 
INSERT INTO Course (course_id, title, description) VALUES ('CS315'  , 'Data Mining'    , 'Undergraduate'); 
INSERT INTO Course (course_id, title, description) VALUES ('CS440'  , 'Introduction to Artificial Intelligence'    , 'Undergraduate'); 
INSERT INTO Course (course_id, title, description) VALUES ('CS582'  , 'Software Testing'  , 'Graduate'); 


INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS451', 5 ,  to_date('2023/11/14','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS451', 8 ,  to_date('2023/12/03','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS451', 12 , to_date('2023/12/01','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS451', 13 , to_date('2023/12/11','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS321', 5 ,  to_date('2023/11/14','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS321', 12 , to_date('2023/12/01','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS321', 13 , to_date('2023/12/11','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS321', 15 , to_date('2023/12/18','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS355', 5 ,  to_date('2023/11/14','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS355', 9 ,  to_date('2023/12/03','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS355', 13 , to_date('2023/12/10','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS437', 5 ,  to_date('2023/11/14','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS437', 8 ,  to_date('2023/12/03','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS437', 9 ,  to_date('2023/11/14','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS437', 12 , to_date('2023/12/01','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS581', 5 ,  to_date('2023/11/14','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS581', 9 ,  to_date('2023/11/14','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS581', 10 , to_date('2023/12/10','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS581', 12 , to_date('2023/12/01','YYYY/MM/DD'));
INSERT INTO EnrolledIn (course_id, student_id, enrollment_date) VALUES ('CS581', 13 , to_date('2023/12/11','YYYY/MM/DD'));


INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS451',   1);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS355',   1);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS322',   1);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS437',   2);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS440',   2);   
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS315',   2);   
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS322',   4);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS360',   7);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS460',   7);	
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS321',   11);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS581',   11);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS215',    3);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS415',    3);
INSERT INTO  Teaches(course_id, instructor_id)  VALUES ('CS440',    3);


INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (1    , 'Lecture 451 - 1' ,'1111'   , to_timestamp('2023/01/13 01:10', 'YYYY/MM/DD HH:MI PM') ,   51   , 'CS451'    , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (2    , 'Lecture 451 - 2'  ,'2222'   , to_timestamp('2023/01/15 01:10', 'YYYY/MM/DD HH:MI PM') ,  49   , 'CS451'    , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (3    , 'Lecture 451 - 3'  ,'3333'   , to_timestamp('2023/01/17 01:10', 'YYYY/MM/DD HH:MI PM') ,  49   , 'CS451'    , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (4    , 'Lecture 451 - 4'  ,'1234'   , to_timestamp('2023/01/20 01:10', 'YYYY/MM/DD HH:MI PM') ,  55   , 'CS451'    , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (5    , 'Lecture 451 - 5'  ,'2345'   , to_timestamp('2023/01/13 01:10', 'YYYY/MM/DD HH:MI PM') ,  50   , 'CS451'    , 11);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (6    , 'Lecture 321 - 1'  ,'3456'   , to_timestamp('2023/01/20 09:10', 'YYYY/MM/DD HH:MI AM') ,  50   , 'CS321'    , 11);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (7    , 'Lecture 321 - 2'  ,'4444'   , to_timestamp('2023/01/20 09:10', 'YYYY/MM/DD HH:MI AM') ,  50   , 'CS321'    , 11);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (8    , 'Lecture 321 - 3'  ,'5555'   , to_timestamp('2023/01/20 09:10','YYYY/MM/DD HH:MI AM') ,  50   , 'CS321'    , 11);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (9    , 'Lecture 321 - 4'  ,'6666'   , to_timestamp('2023/01/20 09:10','YYYY/MM/DD HH:MI AM') ,  51   , 'CS321'    , 11);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (10   , 'Lecture 321 - 5'  ,'6667'   , to_timestamp('2023/01/20 09:10','YYYY/MM/DD HH:MI AM') ,  50   , 'CS321'    , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (11   , 'Lecture 437 - 1'  ,'7777'   , to_timestamp('2023/01/13 10:10','YYYY/MM/DD HH:MI AM') ,  75   , 'CS437'    , 11);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (12   , 'Lecture 437 - 2'  ,'8888'   , to_timestamp('2023/01/15 10:10','YYYY/MM/DD HH:MI AM') ,  75   , 'CS437'    , 2);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (13   , 'Lecture 437 - 3'  ,'9999'   , to_timestamp('2023/01/17 10:10','YYYY/MM/DD HH:MI AM') ,  73   , 'CS437'    , 2);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (14   , 'Lecture 437 - 4'  ,'5678'   , to_timestamp('2023/01/20 10:10','YYYY/MM/DD HH:MI AM') ,  72   , 'CS437'    , 2);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (15   , 'Lecture 355 - 1'  ,'1111'   , to_timestamp('2023/01/20 11:10','YYYY/MM/DD HH:MI AM') ,  50   , 'CS355'    , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (16   , 'Lecture 355 - 2'  ,'2222'   , to_timestamp('2023/01/20 11:10','YYYY/MM/DD HH:MI AM') ,  50   , 'CS355'    , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (17   , 'Lecture 355 - 3'  ,'3333'   , to_timestamp('2023/01/20 11:10','YYYY/MM/DD HH:MI AM') ,  52   , 'CS355'    , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (18   , 'Lecture 355 - 4'  ,'1234'   , to_timestamp('2023/01/20 11:10','YYYY/MM/DD HH:MI AM') ,  50   , 'CS355'    , 6);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (19   , 'Planning meeting','1234' , to_timestamp('2023/01/20 03:10','YYYY/MM/DD HH:MI PM') ,  80   , NULL   , 1);   
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (20   , 'Curriculum  meeting', '1234', to_timestamp('2023/01/20 12:00','YYYY/MM/DD HH:MI PM') ,  115  , NULL   , 1);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (21   , 'Curriculum  meeting', '1234', to_timestamp('2023/01/20 04:10','YYYY/MM/DD HH:MI PM') ,  80   , NULL   , 11	);
INSERT INTO Meeting	(meeting_id, title, passcode, meeting_time,  duration, course_id, instructor_id) VALUES (22   , 'Research meeting', '1234', to_timestamp('2023/01/20 03:00','YYYY/MM/DD HH:MI PM') ,  40   , NULL   , 2);


INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 1, to_timestamp('2023-01-13 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-13 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 2, to_timestamp('2023-01-15 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-15 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 3, to_timestamp('2023-01-17 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-17 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 4, to_timestamp('2023-01-20 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-20 01:59','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 5, to_timestamp('2023-01-13 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-22 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 1, to_timestamp('2023-01-13 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-13 01:59','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 2, to_timestamp('2023-01-15 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-15 01:35','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 3, to_timestamp('2023-01-17 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-17 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 4, to_timestamp('2023-01-20 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-20 01:59','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 5, to_timestamp('2023-01-13 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-22 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (13 , 5, to_timestamp('2023-01-13 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-13 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (15 , 1, to_timestamp('2023-01-13 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-13 01:45','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (15 , 2, to_timestamp('2023-01-15 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-15 01:49','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (15 , 3, to_timestamp('2023-01-17 01:10', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-17 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 11, to_timestamp('2023-01-13 10:10', 'YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-13 10:45','YYYY/MM/DD HH:MI AM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 12, to_timestamp('2023-01-15 10:10', 'YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-15 10:45','YYYY/MM/DD HH:MI AM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 13, to_timestamp('2023-01-17 10:10', 'YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-17 10:45','YYYY/MM/DD HH:MI AM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (5 , 14, to_timestamp('2023-01-20 10:10', 'YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-20 10:35','YYYY/MM/DD HH:MI AM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 11, to_timestamp('2023-01-13 10:10', 'YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-13 10:45','YYYY/MM/DD HH:MI AM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 12, to_timestamp('2023-01-15 10:10', 'YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-15 10:55','YYYY/MM/DD HH:MI AM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 13, to_timestamp('2023-01-17 10:10', 'YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-17 10:45','YYYY/MM/DD HH:MI AM'));
INSERT INTO Attended(student_id, meeting_id, from_timestamp, to_timestamp) VALUES (8 , 14, to_timestamp('2023-01-20 10:10', 'YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-20 10:55','YYYY/MM/DD HH:MI AM'));


INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 1, to_timestamp('2023-01-13 01:10pm', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-13 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 2, to_timestamp('2023-01-15 01:10pm', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-15 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 3, to_timestamp('2023-01-17 01:10pm', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-17 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 4, to_timestamp('2023-01-20 01:10pm', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-20 01:29','YYYY/MM/DD HH:MI PM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (2 , 4, to_timestamp('2023-01-20 01:35pm', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-20 01:59','YYYY/MM/DD HH:MI PM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 5, to_timestamp('2023-01-13 01:10pm', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-13 01:20','YYYY/MM/DD HH:MI PM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (2 , 5, to_timestamp('2023-01-13 01:25pm', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-13 01:35','YYYY/MM/DD HH:MI PM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (3 , 5, to_timestamp('2023-01-13 01:38pm', 'YYYY/MM/DD HH:MI PM'), to_timestamp('2023-01-13 01:55','YYYY/MM/DD HH:MI PM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 11, to_timestamp('2023-01-13 10:10','YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-13 10:45','YYYY/MM/DD HH:MI AM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 12, to_timestamp('2023-01-15 10:10','YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-15 10:45','YYYY/MM/DD HH:MI AM'));   
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 13, to_timestamp('2023-01-17 10:10','YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-17 10:40','YYYY/MM/DD HH:MI AM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (2 , 13, to_timestamp('2023-01-17 10:42','YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-17 10:45','YYYY/MM/DD HH:MI AM'));  
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (1 , 14, to_timestamp('2023-01-20 10:10','YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-20 10:15','YYYY/MM/DD HH:MI AM'));
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (2 , 14, to_timestamp('2023-01-20 10:16','YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-20 10:20','YYYY/MM/DD HH:MI AM'));    
INSERT INTO MeetingRecording ( recording_number, meeting_id,  start_time, end_time) VALUES (3 , 14, to_timestamp('2023-01-20 10:20','YYYY/MM/DD HH:MI AM'), to_timestamp('2023-01-20 10:35','YYYY/MM/DD HH:MI AM'));


INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (1  , 1, to_timestamp('2023-01-13 01:13','YYYY/MM/DD HH:MI PM'), 'Welcome to CS451!', 1); 
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (2  , 1, to_timestamp('2023-01-13 01:25','YYYY/MM/DD HH:MI PM'), 'HW1 is posted!', 1);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (3  , 1, to_timestamp('2023-01-13 01:27','YYYY/MM/DD HH:MI PM'), 'Clarification on problem-2', 5);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (4  , 1, to_timestamp('2023-01-13 01:29','YYYY/MM/DD HH:MI PM'), 'What is the difference between BCNF and 3NF?', 5);   
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (5  , 1, to_timestamp('2023-01-13 01:35','YYYY/MM/DD HH:MI PM'), 'Should we normalize our project DB?', 5);   
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (6  , 1, to_timestamp('2023-01-13 01:27','YYYY/MM/DD HH:MI PM'), 'Problem-3 clarification', 14);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (7  , 1, to_timestamp('2023-01-13 01:30','YYYY/MM/DD HH:MI PM'), 'Strong vs. weak entity', 8);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (8  , 1, to_timestamp('2023-01-13 01:30','YYYY/MM/DD HH:MI PM'), 'Do all strong entities have a primary key!', 9);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (1  , 4, to_timestamp('2023-01-20 01:20','YYYY/MM/DD HH:MI PM'), 'Notation for partial key.', 13);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (2  , 4, to_timestamp('2023-01-20 01:21','YYYY/MM/DD HH:MI PM'), 'Yes, should underline partial keys', 1);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (3  , 4, to_timestamp('2023-01-20 01:25','YYYY/MM/DD HH:MI PM'), 'HW3 is posted!', 1);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (4  , 4, to_timestamp('2023-01-20 01:30','YYYY/MM/DD HH:MI PM'), 'HW2 is due today!', 1);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (5  , 4, to_timestamp('2023-01-20 01:40','YYYY/MM/DD HH:MI PM'), 'All HWs should be submitted on time!', 1);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (6  , 4, to_timestamp('2023-01-20 01:40','YYYY/MM/DD HH:MI PM'), 'Is it possible to submit HW1 a little bit late?', 10);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (1  , 5, to_timestamp('2023-01-22 01:15','YYYY/MM/DD HH:MI PM'), 'Should we include the query output in our solution?' , 12);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (2  , 5, to_timestamp('2023-01-22 01:10','YYYY/MM/DD HH:MI PM'), 'Do you have any questions?', 1);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (3  , 5, to_timestamp('2023-01-22 01:10','YYYY/MM/DD HH:MI PM'), 'HW3 is due today!',	1);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (1  , 12,    to_timestamp('2023-01-15 10:10','YYYY/MM/DD HH:MI AM'), 'HW4 is posted!', 2);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (2  , 12,    to_timestamp('2023-01-15 10:20','YYYY/MM/DD HH:MI AM'), 'Can we handwrite the solution?', 12);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (3  , 12,    to_timestamp('2023-01-15 10:21','YYYY/MM/DD HH:MI AM'), 'Do we need to write tests?', 12);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (4  , 12,    to_timestamp('2023-01-15 10:22','YYYY/MM/DD HH:MI AM'), 'Can we work in pairs?', 12);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (5  , 12,    to_timestamp('2023-01-15 10:23','YYYY/MM/DD HH:MI AM'), 'Is ML hard?', 13);
INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) VALUES (1  , 13,    to_timestamp('2023-01-17 10:10','YYYY/MM/DD HH:MI AM'),  'HW6 is due today!',	1);


INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 1, 5);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 1, 8);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 1, 9);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 1, 10);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 1, 12);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 1, 13);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 1, 17);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 1, 18);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 2, 13);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 2, 14);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 2, 16);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (1 , 4, 15);
INSERT INTO  Watched (recording_number, meeting_id,  student_id) VALUES (2 , 4, 15);
