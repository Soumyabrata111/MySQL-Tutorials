CREATE DATABASE IF NOT EXISTS my_database;
USE my_database;
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    join_date DATE
);
INSERT INTO employees (first_name, last_name, join_date)
VALUES 
('Amit', 'Kumar', '2021-09-01'),
('Priya', 'Sharma', '2022-09-05'),
('Rahul', 'Singh', '2023-09-10'),
('Sneha', 'Verma', '2023-09-12'),
('Neha', 'Gupta', '2023-09-15'),
('Rajesh', 'Yadav', '2023-08-30'),
('Anjali', 'Mishra', '2023-09-01');
SELECT first_name, last_name 
FROM employees 
WHERE YEAR(join_date) = YEAR(CURDATE()) 
AND MONTH(join_date) = MONTH(CURDATE()) 
AND DAY(join_date) <= 15;

drop database my_database
