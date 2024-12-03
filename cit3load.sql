-- Load data into Complication table
LOAD DATA INFILE 'path_to_complication_data.csv' 
INTO TABLE Complication 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
(Occurrence, ComplicationID);

-- Now run your SELECT query
SELECT 
    C.Occurrence, COUNT(C.ComplicationID) AS ComplicationCount
FROM
    Complication C
GROUP BY C.Occurrence;
