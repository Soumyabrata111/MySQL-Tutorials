-- Show existing databases
SHOW DATABASES;

-- Create a new database named expt_3
CREATE DATABASE expt_3;

-- Switch to the expt_3 database
USE expt_3;

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

-- Select alternate records from the students table
SELECT * FROM students WHERE id % 2 = 1;

-- Drop the expt_3 database
DROP DATABASE expt_3;
