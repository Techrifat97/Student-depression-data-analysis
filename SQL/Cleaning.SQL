-- SQL Server T-SQL
-- Checking Column Structure
SELECT
    *
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_NAME LIKE 'student_data';

UPDATE
    student_data
SET
    Gender = 'M'
WHERE
    Gender = 'Male'
UPDATE
    student_data
SET
    Gender = 'F'
WHERE
    Gender = 'Female'
SELECT
    *
FROM
    student_data;

-- Fixing Age Group
ALTER TABLE
    student_data
ADD
    [Age Group] VARCHAR(MAX)
UPDATE
    student_data
SET
    [Age Group] = CASE
        WHEN Age BETWEEN 18
        AND 24 THEN 'A1'
        WHEN Age BETWEEN 25
        AND 30 THEN 'A2'
        ELSE 'A3'
    END -- Check
SELECT
    *
FROM
    student_data;

SELECT
    [Age Group],
    COUNT(*) AS [Number of students per Age Group]
FROM
    student_data
GROUP BY
    [Age Group];

-- Checking essential data for modification
SELECT
    [Academic Pressure],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Academic Pressure];

SELECT
    [Study Satisfaction],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Study Satisfaction];

SELECT
    [Sleep Duration],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Sleep Duration];

SELECT
    [Dietary habits],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Dietary Habits];

SELECT
    [Have you ever had suicidal thoughts ?],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Have you ever had suicidal thoughts ?];

SELECT
    [Study Hours],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Study Hours];

SELECT
    [Financial Stress],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Financial Stress];

SELECT
    [Family History of Mental Illness],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Family History of Mental Illness];

SELECT
    [Depression],
    COUNT(*)
FROM
    student_data
GROUP BY
    [Depression];

-- Creating index for the table
ALTER TABLE
    student_data
ADD
    INDEX_Column INT IDENTITY(1, 1)
UPDATE
    student_data
SET
    Depression = 'Yes'
WHERE
    Depression = 0
UPDATE
    student_data
SET
    Depression = 'No'
WHERE
    Depression = 1


SELECT * FROM student_data;