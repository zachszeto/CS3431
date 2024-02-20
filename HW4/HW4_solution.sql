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
SELECT M1.meeting_id, TO_CHAR(M1.message_time, 'YYYY-MM-DD HH24:MI'), M1.message_text, M2.message_text, M1.user_id, M2.user_id     
FROM Message M1
JOIN Message M2 ON 
    M1.meeting_id = M2.meeting_id
    AND M1.message_time = M2.message_time
    AND M1.user_id != M2.user_id
    AND M1.message_id < M2.message_id;

--Q4
SELECT U.firstname, U.lastname

FROM Users U, Instructor I, AcademicFields AF1, AcademicFields AF2, Teaches T, Course C

WHERE
    U.user_id = I.instructor_id
    AND I.instructor_id = T.instructor_id 
    AND C.course_id = T.course_id
    AND I.instructor_id = AF1.instructor_id
    AND I.instructor_id = AF2.instructor_id
    AND AF1.academicfield = 'Machine Learning'
    AND AF2.academicfield = 'Artificial Intelligence'

GROUP BY
    U.firstname,
    U.lastname

HAVING COUNT(T.course_id) > 2;

--Q5A
SELECT M.meeting_id, M.title, M.passcode, TO_CHAR(M.meeting_time), M.duration, M.course_id, M.instructor_id
FROM Meeting M
WHERE duration > (SELECT AVG(duration) FROM Meeting)
ORDER BY meeting_id;

--5B
SELECT M.meeting_id, M.title, M.passcode, TO_CHAR(M.meeting_time, 'HH24') AS meeting_time, M.duration, M.course_id, M.instructor_id
FROM Meeting M
JOIN (   
        SELECT course_id, AVG(duration) AS avg_duration
        FROM Meeting
        GROUP BY course_id
) avg 
ON M.course_id = avg.course_id
WHERE M.duration > avg.avg_duration
ORDER BY M.meeting_id;

--Q6
SELECT S.student_id, C.course_id
FROM Student S, Course C, EnrolledIn E
WHERE S.student_id = E.student_id
    AND C.course_id = E.course_id
    AND NOT EXISTS (
        SELECT 1
        FROM Attended A, Meeting M
        WHERE M.meeting_id = A.meeting_id
        AND A.student_id = S.student_id
        AND M.course_id = C.course_id
    )
    AND EXISTS (
        SELECT 1
        FROM Meeting M
        WHERE M.course_id = C.course_id
    )
ORDER BY S.student_id;

--Q7
SELECT EN.student_id, M.meeting_id, M.title, W.recording_number
FROM EnrolledIn EN
JOIN Meeting M ON EN.course_id = M.course_id LEFT JOIN Attended A ON EN.student_id = A.student_id AND M.meeting_id = A.meeting_id JOIN Watched W ON M.meeting_id = W.meeting_id AND EN.student_id = W.student_id
WHERE EN.course_id = 'CS451' AND A.meeting_id IS NULL
ORDER BY EN.student_id;

--Q8
SELECT U.user_id, U.firstname, U.lastname, Msg.message_text, Msg.meeting_id
FROM Message Msg
JOIN Users U ON Msg.user_id = U.user_id
JOIN Meeting ME ON Msg.meeting_id = ME.meeting_id
WHERE ME.course_id LIKE 'CS%'
ORDER BY Msg.message_time DESC
FETCH FIRST 1 ROW ONLY;

--Q9
SELECT
    M.meeting_id,
    M.title,
    (SELECT COUNT(A.student_id) FROM attended A WHERE A.meeting_id = M.meeting_id) AS user_count,
    (SELECT COUNT(MR.recording_number) FROM meetingrecording MR WHERE MR.meeting_id = M.meeting_id) AS record_count

FROM meeting M

WHERE
    (SELECT COUNT(A.student_id) FROM attended A WHERE A.meeting_id = M.meeting_id) > 0
    OR (SELECT COUNT(MR.recording_number) FROM meetingrecording MR WHERE MR.meeting_id = M.meeting_id) > 0

ORDER BY M.meeting_id;