DROP TABLE Plays;
DROP TABLE Performs;
DROP TABLE Song;
DROP TABLE Album;
DROP TABLE Instrument;
DROP TABLE Phones;
DROP TABLE Musician;

CREATE TABLE Musician (
    ssn CHAR(9),
    name VARCHAR2(20),
    phone CHAR(10),
    addr VARCHAR2(50),
    PRIMARY KEY(ssn)
);

CREATE TABLE Instrument (
    instr_name VARCHAR2(20),
    instr_num INTEGER,
    musical_key VARCHAR2(10),
    PRIMARY KEY(instr_name,instr_num)
);

CREATE TABLE Album (
    album_id INTEGER,
    ssno CHAR(9) NOT NULL, -- total participation of Album in produces
    title VARCHAR2(25),
    copyright_date DATE,
    PRIMARY KEY(album_id),
    FOREIGN KEY (ssno) REFERENCES Musician(ssn)
);

-- The total participation of Album in "has-songs" can't be enforced in the schema
CREATE TABLE Song (
    song_title VARCHAR2(25),
    album_id INTEGER,
    author VARCHAR2(25),
    PRIMARY KEY(song_title, album_id),
    FOREIGN KEY (album_id) REFERENCES Album(album_id)
);

CREATE TABLE Performs (
    ssn CHAR(9),
    song_title VARCHAR2(25),
    album_id INTEGER,
    PRIMARY KEY(ssn, song_title,album_id),
    FOREIGN KEY (ssn) REFERENCES Musician(ssn),
    FOREIGN KEY (song_title,album_id) REFERENCES Song(song_title,album_id)
);

-- The total participation of Song in "Performs" can't be enforced in the schema
CREATE TABLE Plays (
    ssn CHAR(9),
    instr_name VARCHAR2(20),
    instr_num INTEGER,
    PRIMARY KEY(ssn, instr_name,instr_num),
    FOREIGN KEY (ssn) REFERENCES Musician(ssn) ,
    FOREIGN KEY (instr_name,instr_num) REFERENCES Instrument
    (instr_name,instr_num)
);