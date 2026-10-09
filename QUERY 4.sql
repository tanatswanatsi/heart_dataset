-- Which chest pain type is most associated with heart disease

SELECT ChestPainType,
       COUNT(*) AS total_patients,
       SUM(HeartDisease) AS disease_count,
       ROUND(SUM(HeartDisease) / COUNT(*) * 100, 2) AS disease_rate_pct
FROM heart_staging
GROUP BY ChestPainType
ORDER BY disease_rate_pct DESC;

-- most people with heart disease have asymptpmatic chest pains