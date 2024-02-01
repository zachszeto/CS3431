--HW3 Relational Algebra

--Q1:   
R1 = (Meeting ⨝(Meeting.instructor_id = Teaches.instructor_id) (σ course_id = 'CS321' (Teaches)))
π Meeting.course_id, Meeting.title, User.firstName, User.lastName (User ⨝ R1)

--Q2:
--Finding Instructors with title of Regents Professor
R1 = π instructor_id(σ title = 'Regents Professor' (Instructor))

--Mapping an Instructor ID to a Course
R2 = Teaches ⨝ course_id = Course.course_id (π course_id, title, description(Course))

--Joining Filtered Instructors with Courses
R3 = R1 ⨝ Teaches.instructor_id = instructor_id R2

--Removing Instructor Id 
π Course.course_id, Course.title, Course.description (R3)





