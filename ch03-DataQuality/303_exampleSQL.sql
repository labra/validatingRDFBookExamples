CREATE TABLE User (
    id            INTEGER       PRIMARY KEY NOT NULL,
    name          VARCHAR(40)   NOT NULL,
    birthDate     DATE,
    birthPlace    VARCHAR(50),
    gender        ENUM('male','female')
);

CREATE TABLE Course (
 id           INTEGER PRIMARY KEY,
 StartDate    DATE not null,
 EndDate      DATE not null,
 Instructor   INTEGER FOREIGN KEY REFERENCES User(id)
)

CREATE TABLE EnrolledIn (
 studendId INTEGER FOREIGN KEY REFERENCES User(id),
 courseId  INTEGER FOREIGN KEY REFERENCES Course(id),
)
