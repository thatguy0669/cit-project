Create database if not exists cit;
use cit

CREATE TABLE hospital (
    HospitalID INT PRIMARY KEY,
    Name VARCHAR(100),
    TotalBirths INT,
    TotalComplications INT
);


CREATE TABLE mother (
    MotherID INT PRIMARY KEY,
    HospitalID INT,
    Birthdate DATE,
    PregnancyDuration INT,
    Ethnicity VARCHAR(50),
    FamilyHistory TEXT,
    FOREIGN KEY (HospitalID)
        REFERENCES Hospital (HospitalID)
);


CREATE TABLE exercise (
    MotherID INT,
    Frequency INT,
    Duration INT,
    FOREIGN KEY (MotherID)
        REFERENCES Mother (MotherID)
);


CREATE TABLE socialization (
    MotherID INT,
    Frequency INT,
    Duration INT,
    PeopleCount INT,
    Setting VARCHAR(50),
    FOREIGN KEY (MotherID)
        REFERENCES Mother (MotherID)
);


CREATE TABLE medical_Visit (
    VisitID INT PRIMARY KEY,
    MotherID INT,
    VisitDate DATE,
    Field VARCHAR(50),
    FOREIGN KEY (MotherID)
        REFERENCES Mother (MotherID)
);


CREATE TABLE complication (
    ComplicationID INT PRIMARY KEY,
    MotherID INT,
    Occurrence VARCHAR(50),
    Description TEXT,
    FOREIGN KEY (MotherID)
        REFERENCES Mother (MotherID)
);