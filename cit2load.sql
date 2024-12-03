-- Load data into Hospital table
LOAD DATA INFILE 'path_to_hospital_data.csv' 
INTO TABLE Hospital 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
(Name, TotalBirths, TotalComplications);

-- Now run your SELECT query
SELECT 
    H.Name, H.TotalBirths, H.TotalComplications
FROM
    Hospital H;
