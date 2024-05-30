/*

DATA TESTING:
1. No. of ROWS
2. No. of COLUMNS.
3. DATA TYPES.


*/


--- 1. No. of ROWS.

USE EmployeePerformance

SELECT 
  COUNT(*) AS no_of_rows
FROM 
  PerformanceAnalysis

------------------------------------------------------------------------------

---- 2. No. of COLUMNS.

SELECT 
  COUNT(*) AS no_of_columns
FROM 
  INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'PerformanceAnalysis'


-------------------------------------------------------------------------------

---- 3. DATA TYPES.

SELECT 
  COLUMN_NAME, DATA_TYPE
FROM 
  INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'PerformanceAnalysis'

-----------------------------------------------------------------