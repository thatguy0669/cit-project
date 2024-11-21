
use tc;

SELECT 
	M.Birthdate, 
	M.PregnancyDuration, 
	M.Ethnicity, 
	M.FamilyHistory, 
	MAX(E.Frequency) AS ExerciseFrequency, 
	MAX(E.Duration) AS ExerciseDuration, 
	MAX(S.Frequency) AS SocializationFrequency, 
	MAX(S.Duration) AS SocializationDuration, 
	MAX(S.PeopleCount) AS PeopleCount, 
	MAX(S.Setting) AS Setting, 
	COUNT(MV.VisitID) AS TotalMedicalVisits, 
	MAX(MV.Field) AS MedicalField, 
	MAX(C.Occurrence) AS Occurrence, 
	MAX(C.Description) AS Description 
FROM 
	Mother M 
		LEFT JOIN 
	Exercise E ON M.MotherID = E.MotherID 
		LEFT JOIN 
	Socialization S ON M.MotherID = S.MotherID 
		LEFT JOIN 
	MedicalVisit MV ON M.MotherID = MV.MotherID 
		LEFT JOIN 
	Complication C ON M.MotherID = C.MotherID 
GROUP BY M.MotherID;
