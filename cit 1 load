-- Load data into Mother table
LOAD DATA INFILE 'path_to_mother_data.csv' 
INTO TABLE Mother 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
(Birthdate, PregnancyDuration, Ethnicity, FamilyHistory);

-- Load data into Exercise table
LOAD DATA INFILE 'path_to_exercise_data.csv' 
INTO TABLE Exercise 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
(MotherID, Frequency, Duration);

-- Load data into Socialization table
LOAD DATA INFILE 'path_to_socialization_data.csv' 
INTO TABLE Socialization 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
(MotherID, Frequency, Duration, PeopleCount, Setting);

-- Load data into MedicalVisit table
LOAD DATA INFILE 'path_to_medicalvisit_data.csv' 
INTO TABLE MedicalVisit 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
(MotherID, VisitID, Field);

-- Load data into Complication table
LOAD DATA INFILE 'path_to_complication_data.csv' 
INTO TABLE Complication 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
(MotherID, Occurrence, Description);
