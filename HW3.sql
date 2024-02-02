--HW3 Relational Algebra

--Q1:   
R1 = (Meeting ⨝(Meeting.instructor_id = Teaches.instructor_id) (σ course_id = 'CS321' (Teaches)))
π Meeting.course_id, Meeting.title, User.firstName, User.lastName (User ⨝ R1)

--Q2:
--Finding Instructors with title of Regents Professor
--Mapping an Instructor ID to a Course
--Joining Filtered Instructors with Courses
--Removing Instructor.instructor_id, Teaches.course_id, and	Teaches.instructor_id 
R1 = π instructor_id(σ title = 'Regents Professor' (Instructor))
R2 = Teaches ⨝ course_id = Course.course_id (π course_id, title, description(Course))
R3 = R1 ⨝ Teaches.instructor_id = instructor_id R2
π Course.course_id, Course.title, Course.description (R3)

--Q3
--All user_id who posted messages
--ALl Users who didn't post a message
--Student Ids of those users
--Project student_id, email, first name, and last name
R1 = π user_id(Message)
R2 = R1 ⨝ User.user_id != user_id User
R3 = R2 ⨝ User.user_id = Student.student_id Student
π student_id, email, firstName, lastName (R3)

--Q4 NOT FINISHED R5 Prob not natural Join
--Joining Instructor and Academic Feilds
--Selecting if academic field = Machine Learning
--Joining with User to get firstName, lastName, etc
R1 = Instructor ⨝ Instructor.instructor_id = AcademicFields.instructor_id AcademicFields
R2 = σ academicfield = 'Machine Learning' (R1)
R3 = R2 ⨝ Instructor.instructor_id = User.user_id User
R4 = (π instructor_id Instructor) - (π instructor_id Teaches)
R5 = R3 ⨝ R4
π Instructor.instructor_id, firstName, lastName, email R5

--Q5
R1 = (π student_id, meeting_id Watched) - (π student_id, meeting_id Attended)
R2 = R1 ⨝ (meeting_id = Meeting.meeting_id) Meeting
R3 = σ course_id = 'CS451'(R2)
R4 = R3 ⨝ (Meeting.meeting_id = MeetingRecording.meeting_id) MeetingRecording
π student_id, title, course_id, recording_number R4

--Q6
