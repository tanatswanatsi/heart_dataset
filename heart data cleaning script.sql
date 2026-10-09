select *
from heart;

-- 1 import and create a staging table

CREATE TABLE heart_staging LIKE heart;

INSERT INTO heart_staging SELECT * FROM heart;

select *  
from heart_staging;

-- 2  check for duplicAtes

SELECT *, COUNT(*) 
FROM heart_staging
GROUP BY Age, Sex, ChestPainType, RestingBP, Cholesterol, FastingBS, RestingECG, MaxHR, ExerciseAngina, Oldpeak, ST_Slope, HeartDisease
HAVING COUNT(*) > 1;

-- 3 checking for faulty data

SELECT * FROM heart_staging WHERE RestingBP = 0;

SELECT * FROM heart_staging WHERE Cholesterol = 0;

-- 4 handling the zero cholesterol rows as missing figures

UPDATE heart_staging
SET Cholesterol = NULL
WHERE Cholesterol = 0;

SET SQL_SAFE_UPDATES = 0;

-- 5 fix the restingBP

UPDATE heart_staging
SET RestingBP = NULL
WHERE RestingBP = 0;

SELECT MIN(Age), MAX(Age), MIN(MaxHR), MAX(MaxHR), MIN(Oldpeak), MAX(Oldpeak)
FROM heart_staging;
