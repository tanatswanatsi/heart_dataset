# heart_dataset
SQL project analyzing a heart disease dataset in MySQL — identifying key clinical and symptom patterns associated with heart disease diagnosis.
## Exploratory Analysis — Key Findings

**1. Overall Heart Disease Rate**
Of 918 patients in the dataset, 508 (55.3%) were diagnosed with heart disease, while 410 (44.7%) were not — a fairly balanced dataset for analysis.

**2. Heart Disease Rate by Sex**
Male patients showed a notably higher heart disease rate (63.17%) compared to female patients (25.91%). This aligns with established cardiology research showing men are generally at higher risk at comparable ages, likely influenced by hormonal and lifestyle factors not captured in this dataset.

**3. Average Age: Disease vs. No Disease**
Patients with heart disease were on average older (55.9 years) than those without (50.6 years) — a ~5 year difference, consistent with the understood age-related risk pattern for heart disease.

**4. Chest Pain Type vs. Heart Disease Rate**
Asymptomatic (ASY) patients had the highest heart disease rate at 79.03%, followed by Typical Angina (TA) at 43.48%, Non-Anginal Pain (NAP) at 35.47%, and Atypical Angina (ATA) at the lowest, 13.87%.

This is a counterintuitive and clinically significant finding: patients experiencing no chest pain symptoms at all had by far the highest rate of underlying heart disease. This suggests chest pain presence is not a reliable standalone screening indicator — asymptomatic patients may be underdiagnosed or diagnosed later, since there's no obvious symptom prompting earlier evaluation.

**5. Clinical Measures: Disease vs. No Disease**
| Metric              | No Disease | Disease |
----------------------------------------------
| Avg. Cholesterol    | 238.8      | 251.1   |
| Avg. Resting BP     | 130.2      | 134.4   |
| Avg. Max Heart Rate | 148.2      | 127.7   |

Patients with heart disease had slightly higher average cholesterol and resting blood pressure, as expected. More notably, their average max heart rate was substantially lower (127.7 vs. 148.2) — a difference of over 20 bpm. This likely reflects reduced cardiac exercise capacity in patients with underlying heart disease, a well-documented clinical marker.

**6. Exercise-Induced Angina vs. Heart Disease**
Patients who experienced exercise-induced angina had a dramatically higher heart disease rate — 85.18% — compared to just 35.10% among those without it. Of the 371 patients with exercise angina, 316 had heart disease. This was the single strongest predictor found in this analysis, suggesting exercise-induced chest pain is a far more reliable signal than resting chest pain classification alone.

## Key Findings
- Nearly 1 in 5 patients (19%) had Cholesterol recorded as 0 — a physiologically impossible value likely representing missing/unrecorded data rather than an actual zero reading, highlighting the importance of validating "valid-looking" numeric fields before analysis
- Exercise-induced angina was the strongest predictor: 85% disease rate vs. 35% without it
- Asymptomatic patients (no chest pain) had the *highest* disease rate (79%) of any chest pain category — higher than patients with "typical" angina (43%)
- Patients with heart disease averaged 5 years older and had noticeably lower max heart rate (127.7 vs. 148.2 bpm)
- Male patients showed a substantially higher disease rate (63%) than female patients (26%)

## Summary
Across all six questions, the strongest signals for heart disease in this dataset were: **exercise-induced angina** (85% disease rate) and **asymptomatic chest pain classification** (79% disease rate) — both counterintuitive in different ways, since one is a strong symptom and the other is the absence of symptoms. Age and sex also showed clear, expected patterns (older patients and male patients at higher risk), while resting clinical measures (cholesterol, BP) showed smaller but directionally consistent differences.

*Note: these findings describe patterns observed in this dataset only and should not be interpreted as medical diagnostic criteria. Correlation here does not establish causation, and any real clinical application would require far more rigorous analysis.*

