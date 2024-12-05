-- Insert data into Hospital table
INSERT INTO Hospital (HospitalID, HospitalName, TotalBirths, TotalComplications) VALUES
(1, 'NewYork Presbyterian', 12500, 250),
(2, 'Mount Sinai Hospital', 9800, 190),
(3, 'NYU Langon Health', 10300, 210),
(4, 'Bellevue Hospital Center', 7600, 150);

-- Insert data into Mother table
INSERT INTO Mother (MotherID, HospitalID, BirthDate, PregnancyDurationWeeks, Ethnicity, FamilyHistory) VALUES
(1, 1, '1992-04-15', 39, 'Hispanic', 'No prior history of complications'),
(2, 2, '1988-06-15', 38, 'African American', 'History of diabetes during pregnancy'),
(3, 3, '1990-11-22', 41, 'Asian', 'No family history'),
(4, 4, '1995-09-05', 37, 'Caucasian', 'History of Hypertension'),
(5, 1, '1993-02-08', 40, 'African American', 'No prior history of complications'),
(6, 2, '1987-12-20', 36, 'Hispanic', 'History of preeclampsia'),
(7, 3, '1994-03-14', 39, 'Caucasian', 'No Family history'),
(8, 4, '1991-07-25', 38, 'Asian', 'History of anemia'),
(9, 2, '1989-05-12', 39, 'Hispanic', 'History of Gestational Diabetes'),
(10, 1, '1996-01-30', 40, 'African American', 'No Family History');

-- Insert data into Exercise table
INSERT INTO Exercise (MotherID, Frequency, DurationMinutes) VALUES
(1, '3 Times per week', 45),
(2, 'Daily', 30),
(3, '5 Times per week', 60),
(4, '2 Times per week', 20),
(5, '4 Times per week', 50),
(6, 'Occasionally (1-2 times)', 15),
(7, '6 Times per week', 40),
(8, '3 Times per week', 30),
(9, '4 Times per week', 35),
(10, 'Daily', 25);

-- Insert data into Socialization table
INSERT INTO Socialization (MotherID, Frequency, DurationHours, People, Setting) VALUES
(1, 'Weekly', 2, 5, 'Community Group'),
(2, 'Monthly', 3, 10, 'Family Gatherings'),
(3, 'Twice a Week', 1.5, 3, 'Close Friends'),
(4, 'Occasionally (1-2)', 2.5, 8, 'Church Group'),
(5, '3 Times per Month', 2, 6, 'Book Club'),
(6, 'Rarely', 1, 2, 'One-on-One Meetings'),
(7, 'Weekly', 1.5, 4, 'Fitness Class'),
(8, 'Daily', 1, 2, 'Playground Meetup'),
(9, 'Twice a month', 2, 12, 'Family Dinners'),
(10, 'Weekly', 3, 15, 'Cultural Event');

-- Insert data into MedicalVisits table
INSERT INTO MedicalVisits (VisitID, MotherID, VisitDate, CaretakerField) VALUES
(1, 1, '2024-01-15', 'Obstetrics'),
(2, 2, '2024-02-20', 'Endocrinology'),
(3, 3, '2024-03-05', 'Obstetrics'),
(4, 4, '2024-03-22', 'Cardiology'),
(5, 5, '2024-04-10', 'Obstetrics'),
(6, 6, '2024-04-18', 'General Practitioner'),
(7, 7, '2024-05-01', 'Obstetrics'),
(8, 8, '2024-05-15', 'Nutritionist'),
(9, 9, '2024-05-20', 'Endocrinology'),
(10, 10, '2024-06-01', 'Obstetrics');

-- Insert data into Complications table
INSERT INTO Complications (ComplicationID, MotherID, Occurrence, Description) VALUES
(1, 2, 'Pregnancy', 'Gestational Diabetes'),
(2, 4, 'Pregnancy', 'Hypertension'),
(3, 6, 'Pregnancy', 'Preeclampsia'),
(4, 8, 'Pregnancy', 'Anemia'),
(5, 5, 'Birth', 'Prolonged Labor'),
(6, 7, 'Birth', 'Emergency C-Section'),
(7, 9, 'Pregnancy', 'Gestational Diabetes'),
(8, 10, 'Pregnancy', 'Preterm Labor Risk');
