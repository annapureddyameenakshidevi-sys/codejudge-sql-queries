# SQL Reasoning

## 1. LEFT JOIN vs INNER JOIN
LEFT JOIN was used to display all students including those who are not enrolled in any course. INNER JOIN would remove students without enrollments.

## 2. HAVING vs WHERE
HAVING is used with aggregate functions like COUNT(). It helps filter grouped results after aggregation.

## 3. Subquery Usage
Subqueries help compare one result with another result, such as finding students whose average score is greater than the overall average.

## 4. Duplicate Records
Duplicate records can increase counts incorrectly in aggregation queries. Proper keys and DISTINCT help avoid this issue.

## 5. Edge Case Considered
NULL values in email fields were considered while writing validation queries for student records.
