--Zachary Szeto

--Q1
SELECT Users.user_id, Users.firstname, Meeting.meeting_id, Meeting.title, Meeting.meeting_time, MeetingRecording.start_time, MeetingRecording.end_time
FROM Meeting, Instructor, Users, MeetingRecording
WHERE Meeting.instructor_id = Instructor.instructor_id AND Users.user_id = Instructor.instructor_id AND Meeting.meeting_id = MeetingRecording.meeting_id AND Meeting.meeting_time < TO_DATE('2023/01/17', 'YYYY/MM/DD');

--Q2
SELECT U.firstname, U.lastname, C.course_id, C.title, COUNT(E.student_id)
FROM Users U, Course C, EnrolledIn E, Instructor I, Teaches T
WHERE 
    U.user_id = I.instructor_id
    AND I.instructor_id = T.instructor_id 
    AND C.course_id = T.course_id
    AND T.course_id = E.course_id

GROUP BY
    U.firstname,
    U.lastname,
    C.course_id, 
    C.title

HAVING
    COUNT(E.student_id) > 3;


--Q3
SELECT M1.meeting_id,
        TO_CHAR(M1.message_time, 'YYYY-MM-DD HH24:MI'),
       
        M1.message_text,
        M2.message_text,
       
        M1.user_id,
        M2.user_id
       
FROM Message M1

JOIN Message M2 ON 
    M1.meeting_id = M2.meeting_id
    AND M1.message_time = M2.message_time
    AND M1.user_id != M2.user_id
    AND M1.message_id < M2.message_id;

--Q4
SELECT U.firstname, U.lastname

FROM User U, Instructor I, AcademicFields AF, Teaches T, Course C

WHERE
    U.user_id = I.instructor_id
    AND I.instructor_id = T.instructor_id 
    AND C.course_id = T.course_id

HAVING COUNT(T.course_id) > 2

GROUP BY 