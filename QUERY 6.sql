-- Percentage of patients with exercice induced angina who have heart disease

SELECT ExerciseAngina,
       COUNT(*) AS total_patients,
       SUM(HeartDisease) AS disease_count,
       ROUND(SUM(HeartDisease) / COUNT(*) * 100, 2) AS disease_rate_pct
FROM heart_staging
GROUP BY ExerciseAngina;