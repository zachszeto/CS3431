--HW3 Relational Algebra

--Q1:   
R1 = (Meeting ⨝(Meeting.instructor_id = Teaches.instructor_id) (σ course_id = 'CS321' (Teaches)))
R2 = R1 ⨝ (Teaches.instructor_id = Instructor.instructor_id) Instructor ⨝ (Instructor.instructor_id = User.user_id) User
R3 = π Meeting.title, Meeting.course_id, User.firstName, User.lastName (R2)
τ Meeting.course_id asc (R3)

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
R1 = π user_id(User) - π user_id(Message) ∩ π user_id User
R2 = R1 ⨝ (user_id = student_id) (Student) 
R3  = R2 ⨝ User
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
R1 = π meeting_id, course_id, instructor_id (Meeting)
R2 = R1 ⨝ (instructor_id = user_id) User
R3 = γ Meeting.course_id, firstName, lastName;COUNT(meeting_id) → num_meetings (R2)
R4 = R3 ⨝ (σ num_meetings > 2 (R3))
π Meeting.course_id, num_meetings, firstName, lastName (R4)

--Q7
R1 = γ user_id; COUNT(user_id)→num_mentions (Mentions ⨝ (σ Meeting.course_id = 'CS451' (Meeting)))
R2 = σ num_mentions > 1 (R1)
R3 = R2 ⨝ (Mentions.user_id	= User.user_id) User
R3

--Q8
R1 = π message_id, meeting_id, user_id Message
R2 = R1 ⨝ (user_id = student_id) Student
R3 = R1 ⨝ (user_id = instructor_id) Instructor
R4 = γ meeting_id; COUNT(student_id)→num_of_students (R2)
R5 = γ meeting_id; COUNT(instructor_id)→num_of_instructors (R3)
R6 = R5 ⨝ R4
σ (num_of_instructors > num_of_students) R6

--Q9


