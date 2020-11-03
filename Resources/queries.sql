-- Create tables for raw data to be loaded into

CREATE TABLE mls_salaries_2007(
id INT PRIMARY KEY,
club VARCHAR,
last_name VARCHAR,
first_name VARCHAR,
);

CREATE TABLE heart_disease(
id INT PRIMARY KEY,
age INT,
sex INT,
chol INT,
);

-- Joins tables
SELECT mls_salaries_2007.id, mls_salaries_2007.club, mls_salaries_2007.last_name, mls_salaries_2007.first_name, heart_disease.age, heart_disease.sex, heart_disease.chol
FROM mls_salaries_2007
JOIN heart_disease
ON mls_salaries_2007.id = heart_disease.id;