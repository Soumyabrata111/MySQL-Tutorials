-- Show existing databases
SHOW DATABASES;

-- Create a new database named expt_2
CREATE DATABASE expt_2;

-- Switch to the expt_2 database
USE expt_2;

-- Create a table named students
CREATE TABLE students (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  PRIMARY KEY (id)
);

-- Insert data into the students table
INSERT INTO students (first_name, age) VALUES
  ('X', 20),
  ('Y', 21),
  ('Y', 21),
  ('Z', 22),
  ('XY', 22);
  
-- Select all records from the students table
SELECT * FROM students;

-- Create a temporary table with the same structure as students
CREATE TABLE students_temp LIKE students;

-- Insert distinct records into the temporary table
INSERT INTO students_temp
SELECT MAX(id), first_name, age
FROM students
GROUP BY first_name, age;

-- Drop the original students table
DROP TABLE students;

-- Rename the temporary table to the original name
ALTER TABLE students_temp RENAME TO students;
SELECT * FROM students;
-- Drop the expt_2 database
DROP DATABASE expt_2;