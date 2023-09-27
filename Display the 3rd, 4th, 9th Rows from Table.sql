-- Step 1: Create a new database named 'company'
CREATE DATABASE IF NOT EXISTS company;
USE company;

-- Step 2: Create a table named 'employees'
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    Currency VARCHAR(5),
    salary DECIMAL(10 , 2 ) NOT NULL
);

-- Step 3: Insert data into the 'employees' table with Rupee symbol (using Unicode escape)
INSERT INTO employees (first_name, last_name, Currency, salary)
VALUES 
   ('Rahul', 'Verma', '₹', 100000),
    ('Rajesh', 'Sharma', '₹', 90000),
    ('Amit', 'Yadav', '₹', 80000),
    ('Pooja', 'Gupta', '₹', 70000),
    ('Meera', 'Singh', '₹', 60000),
    ('Rahim', 'Alam', '₹', 100000),
    ('Amin', 'Iqbal', '₹', 90000),
    ('Joyanto', 'Roy', '₹', 80000),
    ('Mohan', 'Das', '₹', 70000),
    ('Arun', 'Choudhury', '₹', 60000),
    ('Sunil', 'Basu', '₹', 50000),
    ('Monirul', 'Islam', '₹', 120000),
    ('Mahesh', 'Mishra', '₹', 110000),
    ('Ranjit', 'Ray', '₹', 100000),
    ('Rakesh', 'Mishra', '₹', 50000);
    
select * from employees;

-- Display the 3rd, 4th, and 9th Rows from Table 'employees'
SELECT * 
FROM employees
WHERE id IN (3, 4, 9);

drop database company