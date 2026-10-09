-- Average cholesterol, resting BP, and max heart rate for patient with or without heart disease

SELECT HeartDisease,
       ROUND(AVG(Cholesterol), 1) AS avg_cholesterol,
       ROUND(AVG(RestingBP), 1) AS avg_resting_bp,
       ROUND(AVG(MaxHR), 1) AS avg_max_hr
FROM heart_staging
GROUP BY HeartDisease;