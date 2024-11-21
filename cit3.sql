
use tc;

SELECT 
    C.Occurrence, COUNT(C.ComplicationID) AS ComplicationCount
FROM
    Complication C
GROUP BY C.Occurrence;
