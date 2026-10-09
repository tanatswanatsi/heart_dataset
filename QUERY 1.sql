-- Total number of patients with heart disease and those without

SELECT HeartDisease,
       COUNT(*) AS total_patients
FROM heart_staging
GROUP BY HeartDisease;

-- more people have heart disease than those who do not have