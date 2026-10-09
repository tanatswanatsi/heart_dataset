-- Average age of patients with vs. without heart disease

SELECT HeartDisease,
       ROUND(AVG(Age), 1) AS avg_age
FROM heart_staging
GROUP BY HeartDisease;

-- on the average age for people with heart disease is 55.6 and the average age of people without withuot heart disease is 50.9