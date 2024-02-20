-- Zachary Szeto
DROP TABLE EnrolledIn;
DROP TABLE Wacthed;
DROP TABLE Attended;
DROP TABLE Teaches;
DROP TABLE MeetingRecordingTags;
DROP TABLE Message;
DROP TABLE MeetingRecording;
DROP TABLE Meeting;
DROP TABLE Course;
DROP TABLE InstructorAF;
DROP TABLE Instructor;
DROP TABLE Student;

-- The total participation of Messages in "PostedBy" can't be enforced in the schema
-- The total participation of Messages in "Mentions" can't be enforced in the schema

------------------------------------------------------------------------------- ENTITIES -------------------------------------------------------------------------------    
CREATE TABLE Student (
    --User Attributes
    userID INTEGER,
    firstname VARCHAR2(15),
    lastname VARCHAR2(15),
    email VARCHAR2(30),
    pronouns VARCHAR2(15),
    password VARCHAR2(30),

    PRIMARY KEY (userID)
);

CREATE TABLE Instructor (
    --User Attributes
    userID INTEGER,
    firstname VARCHAR2(15),
    lastname VARCHAR2(15),
    email VARCHAR2(30),
    pronouns VARCHAR2(15),
    password VARCHAR2(30),

    --Instructor Attibutes
    title VARCHAR2(15),

    PRIMARY KEY (userID)
);

--Multivalued Attribute of Instructor
CREATE TABLE InstructorAF (
    userID INTEGER,
    academic_fields VARCHAR2(30),

    PRIMARY KEY(userID, academic_fields),
    FOREIGN KEY(userID) REFERENCES Instructor(userID)
);

CREATE TABLE Course (
    courseID INTEGER,
    description VARCHAR2(50),
    title VARCHAR2(30),

    PRIMARY KEY(courseID)
);

CREATE TABLE Meeting (
    meetingID INTEGER,
    title VARCHAR2(15),
    passcode VARCHAR2(15),
    duration FLOAT,
    start_time TIMESTAMP,

    --AssociatedWith
    courseID INTEGER,

    --Hosted
    userID INTEGER NOT NULL,

    PRIMARY KEY(meetingID),
    FOREIGN KEY(userID) REFERENCES Instructor(userID),
    FOREIGN KEY(courseID) REFERENCES Course(courseID)
);

--Weak Entity of Meeting
CREATE TABLE MeetingRecording (
    Recording_number INTEGER,
    meetingID INTEGER,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    
    PRIMARY KEY(Recording_number, meetingID),
    FOREIGN KEY(meetingID) REFERENCES Meeting(meetingID)
);

--Multivalued Attribute of MeetingRecording
CREATE TABLE MeetingRecordingTags (
    Recording_number INTEGER,
    meetingID INTEGER,
    Recording_tags VARCHAR2(15),

    PRIMARY KEY(Recording_number, meetingID, Recording_tags),
    FOREIGN KEY(Recording_number, meetingID) REFERENCES MeetingRecording(Recording_number, meetingID),
    FOREIGN KEY(meetingID) REFERENCES Meeting(meetingID)
);

--Weak Entity of Meeting
CREATE TABLE Message (
    message_id INTEGER,
    meetingID INTEGER,
    msg_time TIMESTAMP,
    text VARCHAR2(50),

    PRIMARY KEY(message_id, meetingID),

    FOREIGN KEY(meetingID) REFERENCES Meeting(meetingID)
);

------------------------------------------------------------------------------- RELATIONSHIPS -------------------------------------------------------------------------------

-- Student to Course (Many to Many)
CREATE TABLE EnrolledIn (
    userID INTEGER,
    courseID INTEGER,

    enrollment_date DATE,

    FOREIGN KEY(userID) REFERENCES Student(userID),
    FOREIGN KEY(courseID) REFERENCES Course(courseID)
);

-- Student to Meeting Recording (Many to Many)
CREATE TABLE Wacthed (
    userID INTEGER,
    Recording_number INTEGER,
    meetingID INTEGER,

    PRIMARY KEY(userID, Recording_number, meetingID),
    FOREIGN KEY(userID) REFERENCES Student(userID),
    FOREIGN KEY(Recording_number, meetingID) REFERENCES MeetingRecording(Recording_number, meetingID)
);


-- Student to Meeting (Many to Many)
CREATE TABLE Attended (
    userID INTEGER,
    meetingID INTEGER,

    joined_time TIMESTAMP,
    left_time TIMESTAMP,
    
    PRIMARY KEY(userID, meetingID),
    FOREIGN KEY(userID) REFERENCES Student(userID),
    FOREIGN KEY(meetingID) REFERENCES Meeting(meetingID)
);

-- Course to Instructor (1...* to Many)
CREATE TABLE Teaches (
    userID INTEGER,
    courseID INTEGER,

    PRIMARY KEY(userID, courseID),
    FOREIGN KEY(userID) REFERENCES Student(userID),
    FOREIGN KEY(courseID) REFERENCES Course(courseID)
);

--BelongsTo: (Weak RelationshiP) Meeting to Meeting Recording - IMPLEMENTED IN WEAK ENTITY
--PostAt: (Weak RelationshiP) Meeting to Message - IMPLEMENTED IN WEAK ENTITY