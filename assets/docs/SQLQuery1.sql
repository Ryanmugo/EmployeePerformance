--SQL QUERY CREATION OF DATABASE AND USING IT

-- CREATION
CREATE DATABASE EmployeePerformance

-- USING DATABASE

USE EmployeePerformance

-- CREATION OF VIEW

CREATE VIEW PerformanceAnalysis AS
SELECT 
  employee_id, department, region, no_of_trainings, age, gender, length_of_service, avg_training_score
FROM Employee


----------------------------------------------------------------------------------------------------------------