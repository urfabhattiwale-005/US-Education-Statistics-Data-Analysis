CREATE DATABASE Education_Statistics;
USE Education_Statistics;

SELECT * FROM education_inequality_data;

-- State-wise Performance
SELECT state,
       AVG(avg_test_score_percent) AS avg_score
FROM  education_inequality_data
GROUP BY state
ORDER BY avg_score DESC;

-- Top 10 Schools by Performance
SELECT school_name, state, avg_test_score_percent
FROM education_inequality_data
ORDER BY avg_test_score_percent DESC
LIMIT 10;

-- Funding vs Performance
SELECT funding_per_student_usd,
       avg_test_score_percent
FROM education_inequality_data;

-- High Dropout Schools
SELECT school_name, state, dropout_rate_percent
FROM education_inequality_data
ORDER BY dropout_rate_percent DESC;