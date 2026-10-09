-- Heart disesa rate by sex

SELECT Sex,
       COUNT(*) AS total_patients,
       SUM(HeartDisease) AS disease_count,
       ROUND(SUM(HeartDisease) / COUNT(*) * 100, 2) AS disease_rate_pct
FROM heart_staging
GROUP BY Sex;

-- Males have far more patients, disease count and disease rate percentage than Females