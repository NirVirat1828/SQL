-- basics.sql
-- Author: Nirvik
-- Description: Basic SQL commands covering database and table creation, and basic SELECT queries.

-- Create a new database (you may skip this if you're using a pre-defined database)
CREATE DATABASE IF NOT EXISTS demo_db;
USE demo_db;

-- Create a simple table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(5)
);

-- Insert some sample data
INSERT INTO students (student_id, name, age, grade) VALUES
(1, 'Alice', 20, 'A'),
(2, 'Bob', 22, 'B'),
(3, 'Charlie', 19, 'A'),
(4, 'David', 21, 'C');

-- Retrieve all data from the table
SELECT * FROM students;

-- Retrieve only names and grades
SELECT name, grade FROM students;

-- Filter data using WHERE clause
SELECT * FROM students WHERE grade = 'A';

-- Sort the result by age in ascending order
SELECT * FROM students ORDER BY age ASC;

-- Count how many students have each grade
SELECT grade, COUNT(*) AS count FROM students GROUP BY grade;
