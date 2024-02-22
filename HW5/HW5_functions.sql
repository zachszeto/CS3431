--Q1
CREATE OR REPLACE FUNCTION is_student(user_id IN NUMBER)
RETURN VARCHAR2
IS
    user_type VARCHAR2(20);
BEGIN
    -- Check if the user_id exists in the Student table
    SELECT 'student' INTO user_type
    FROM Student
    WHERE student_id = user_id;
    
    RETURN user_type;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'instructor';
END;
/

--Test Select Statement
SELECT user_id
FROM Users
WHERE is_student(user_id) = 'student'; 


--Q2
CREATE OR REPLACE PROCEDURE insert_instructor (
    instructor_id IN  NUMBER, 
    email IN VARCHAR2, 
    firstname IN VARCHAR2, 
    lastname IN VARCHAR2,
    title IN VARCHAR2
)
IS
BEGIN
    -- Insert into Users table
    INSERT INTO Users(user_id, email, firstname, lastname)
    VALUES (instructor_id, email, firstname, lastname);

    -- Insert into Instructor table
    INSERT INTO Instructor(instructor_id, title)
    VALUES (instructor_id, title);

END insert_instructor;
/

--Test insert_instructor
BEGIN
    insert_instructor(
        instructor_id => 12345,
        email => 'zdszeto@wpi.edu',
        firstname => 'Zachary',
        lastname => 'Szeto',
        title => 'Professor'
    );
END;
/

--Q3
CREATE or REPLACE TRIGGER check_passcode
BEFORE INSERT OR UPDATE ON Meeting
FOR EACH ROW
BEGIN
    IF (:NEW.course_id IS NOT NULL AND :NEW.passcode IS NULL) THEN
        RAISE_APPLICATION_ERROR(-20004, 'A passcode is required for meetings associated with a course');
    END IF;
END;
/

--Test check_passcode
    --Insert Test
    INSERT INTO Meeting (meeting_id, course_id, passcode, meeting_date)
    VALUES (1, 1001, NULL, SYSDATE);
    --Update Test
    UPDATE Meeting
    SET passcode = NULL
    WHERE meeting_id = 1;

--Q4
CREATE OR REPLACE TRIGGER set_description
BEFORE INSERT OR UPDATE ON Course
FOR EACH ROW
BEGIN
    -- If description is NULL, set default description to course title
    IF :NEW.description IS NULL THEN :NEW.description := :NEW.title;
    END IF;
END;
/

--Test check_passcode
    --Insert Test
    INSERT INTO Course (course_id, title, description)
    VALUES ('CS500', 'Operating Systems', NULL);
    --Update Test
    UPDATE Course
    SET description = NULL
    WHERE course_id = 'CS321';

--Q5
CREATE or REPLACE TRIGGER message_length
BEFORE INSERT or UPDATE ON Message
FOR EACH ROW
BEGIN
    IF is_student(:NEW.user_id) = 'student'  AND LENGTH(:NEW.message_text) > 40 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Messages posted by students cannot exceed 40 characters.');
    END IF;
END;
/

--Test message_length
    --Student
    INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) 
    VALUES (10, 1, to_timestamp('2023-12-06 01:00','YYYY/MM/DD HH:MI PM'), 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 5); 

    --Instructor
    INSERT INTO  Message (message_id, meeting_id, message_time, message_text, user_id) 
    VALUES (11, 1, to_timestamp('2023-12-06 02:00','YYYY/MM/DD HH:MI PM'), 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1); 