/*
   Analysis Questions to Ponder:

     1. How many employees are in the company?
	 2. How many regions are there in the region?
	 3. What is the average age of the company according to the database?
	 4. What is the average Training Score in the database?
	 5. Which department has the highest average training score?
	 6. How does the average age of employees vary across different departments?
	 7. What is the average performance score for male and female employees? Does it differ between genders?
	 8. Is there a correlation between number of years employees have been at the company and their performance scores?
	

*/

-- 1. TOTAL NUMBER OF EMPLOYEES - Answer to Question 1.
USE EmployeePerformance

SELECT 
  COUNT(employee_id) AS TotalNumberOfEmployees
FROM 
  PerformanceAnalysis


-- TOTAL NUMBER OF REGIONS - Answer to Question 2.

SELECT 
  COUNT(DISTINCT region) AS TotalNumberOfRegions
FROM 
  PerformanceAnalysis

-- Average Age - Answer to Question 3.

SELECT
  AVG(age) AS AverageAgeOfEmployees
FROM 
  PerformanceAnalysis

-- Average Training Score - Answer to Question 4.

SELECT 
  AVG(avg_training_score) AS AverageTrainingScore
FROM 
  PerformanceAnalysis



--  Department Relation To HIGHEST TRAINING SCORE - Answer to Question 5.

SELECT 
  department AS Department, AVG(avg_training_score) AS TrainingScore
FROM 
  PerformanceAnalysis
GROUP BY 
  department
ORDER BY 
  TrainingScore DESC


--  Department Relation To AGE - Answer to Question 6

SELECT 
 department AS Department, AVG(age) AS AGE
FROM 
  PerformanceAnalysis
GROUP BY 
  department
ORDER BY 
  AGE ASC


-- Gender Segmentation with Average Performance - Answer to Question 7.

SELECT
  gender AS Gender, AVG(avg_training_score) AS AveragePerformance
FROM 
  PerformanceAnalysis
GROUP BY 
  gender




-- Years at company with performance score - Answer to Question 8.
SELECT
    CASE
        WHEN length_of_service >= 0 AND length_of_service <= 5 THEN '0-5 years'
        WHEN length_of_service > 5 AND length_of_service <= 10 THEN '6-10 years'
        WHEN length_of_service > 10 AND length_of_service <= 15 THEN '11-15 years'
        WHEN length_of_service > 15 AND length_of_service <= 20 THEN '16-20 years'
        WHEN length_of_service > 20 THEN '21+ years'
        ELSE 'Unknown'
    END AS ServiceYearsBucket,
    AVG(avg_training_score) AS AveragePerformance
FROM 
    PerformanceAnalysis
GROUP BY 
    CASE
        WHEN length_of_service >= 0 AND length_of_service <= 5 THEN '0-5 years'
        WHEN length_of_service > 5 AND length_of_service <= 10 THEN '6-10 years'
        WHEN length_of_service > 10 AND length_of_service <= 15 THEN '11-15 years'
        WHEN length_of_service > 15 AND length_of_service <= 20 THEN '16-20 years'
        WHEN length_of_service > 20 THEN '21+ years'
        ELSE 'Unknown'  
    END
ORDER BY 
    AveragePerformance ASC