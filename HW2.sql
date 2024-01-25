-- Zachary Szeto

-- The total participation of Messages in "PostedBy" can't be enforced in the schema
-- The total participation of Messages in "Mentions" can't be enforced in the schema

------------------------------------------------------------------------------- ENTITIES -------------------------------------------------------------------------------    
CREATE TABLE Student {
    --User Attributes
    userID INTEGER,
    firstname VARCHAR2(15),
    lastname VARCHAR2(15),
    email VARCHAR2(30),
    pronouns VARCHAR2(15),
    password VARCHAR2(30),

    PRIMARY KEY (userID)
};

CREATE TABLE Instructor {
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
};

--Multivalued Attribute of Instructor
CREATE TABLE InstructorAF {
    userID INTEGER,
    academic_fields VARCHAR2(30),

    PRIMARY KEY(userID, academic_fields),
    FOREIGN KEY(userID) REFERENCES Instructor(userID)
};

CREATE TABLE Course {
    courseID INTEGER,
    description VARCHAR2(50),
    title VARCHAR2(30),

    PRIMARY KEY(courseID)
};

CREATE TABLE Meeting {
    meetingID INTEGER,
    title VARCHAR2(15),
    passcode VARCHAR2(15),
    duration FLOAT,
    start_time TIME,

    --AssociatedWith
    courseID INTEGER,

    --Hosted
    userID INTEGER NOT NULL,

    PRIMARY KEY(meetingID),
    FOREIGN KEY(userID) REFERENCES Instructor(userID)
    FOREIGN KEY(courseID) REFERENCES Course(courseID)
};

--Weak Entity of Meeting
CREATE TABLE MeetingRecording {
    number INTEGER,
    meetingID INTEGER,
    start TIME,
    end TIME,
    
    PRIMARY KEY(number, meetingID),
    FOREIGN KEY(meetingID) REFERENCES Meeting(meetingID)
};

--Multivalued Attribute of MeetingRecording
CREATE TABLE MeetingRecordingTags {
    number INTEGER,
    meetingID INTEGER,
    tag VARCHAR2(15),

    PRIMARY KEY(number, meetingID, tag,),
    FOREIGN KEY(number, meetingID) REFERENCES MeetingRecording(number, meetingID),
    FOREIGN KEY(meetingID) REFERENCES Meeting(meetingID)
};

--Weak Entity of Meeting
CREATE TABLE Message {
    message_id INTEGER,
    meetingID INTEGER,
    time TIME,
    text VARCHAR2(50),

    PRIMARY KEY(message_id, meetingID),

    FOREIGN KEY(meetingID) REFERENCES Meeting(meetingID)
};

------------------------------------------------------------------------------- RELATIONSHIPS -------------------------------------------------------------------------------

-- Student to Course (Many to Many)
CREATE TABLE EnrolledIn {
    userID INTEGER,
    courseID INTEGER,

    enrollment_date DATE,

    FOREIGN KEY(userID) REFERENCES Student(userID),
    FOREIGN KEY(courseID) REFERENCES Course(courseID)
}

-- Student to Meeting Recording (Many to Many)
CREATE TABLE Wacthed {
    userID INTEGER,
    number INTEGER,
    meetingID INTEGER,

    PRIMARY KEY(userID, number, meetingID),
    FOREIGN KEY(userID) REFERENCES Student(userID),
    FOREIGN KEY(number, meetingID) REFERENCES MeetingRecording(number, meetingID)
}


-- Student to Meeting (Many to Many)
CREATE TABLE Attended {
    userID INTEGER,
    meetingID INTEGER,

    from time,
    to time,
    
    PRIMARY KEY(userID, meetingID),
    FOREIGN KEY(userID) REFERENCES Student(userID),
    FOREIGN KEY(meetingID) REFERENCES Meeting(meetingID)
}

-- Course to Instructor (1...* to Many)
CREATE TABLE Teaches {
    userID INTEGER,
    courseID INTEGER,

    PRIMARY KEY(userID, courseID),
    FOREIGN KEY(userID) REFERENCES Student(userID),
    FOREIGN KEY(courseID) REFERENCES Course(courseID),
}

--BelongsTo: (Weak RelationshiP) Meeting to Meeting Recording - IMPLEMENTED IN WEAK ENTITY
--PostAt: (Weak RelationshiP) Meeting to Message - IMPLEMENTED IN WEAK ENTITY



