# first creat the database
CREATE DATABASE assignment;
USE assignment;

# create table and insert values
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    Salary INT,
    HireDate DATE
);

INSERT INTO Employees (EmpID, EmpName, Department, City, Salary, HireDate) VALUES
(101, 'Rahul Mehta', 'Sales', 'Delhi', 55000, '2020-04-12'),
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000, '2019-09-25'),
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10'),
(104, 'Neha Patel', 'Sales', 'Delhi', 48000, '2022-01-14'),
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22'),
(106, 'Divya Nair', 'IT', 'Chennai', 81000, '2019-12-11'),
(107, 'Raj Kumar', 'HR', 'Delhi', 60000, '2020-05-28'),
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-03'),
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000, '2023-01-15');
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------


#1. Show employees working in either the ‘IT’ or ‘HR’ departments ?
select EmpName, Department, City from employees
WHERE Department IN ("IT", "HR");


#2. Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’ ?
select * from employees
WHERE Department in ("Sales","IT","Finance");


#3. Display employees whose salary is between ₹50,000 and ₹70,000 ?
select * from employees
WHERE Salary BETWEEN 50000 and 70000;

#4. List employees whose names start with the letter ‘A’ ?
select * from employees
where EmpName LIKE 'A%';

#5. Find employees whose names contain the substring ‘an' ?
select EmpID, EmpName
From employees
WHERE Empname LIKE '%an%';

#6. Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000 ?
select * from employees
Where City IN ('Delhi', 'Mumbai') 
AND Salary > 55000;

#7.  Display all employees except those from the ‘HR’ department ?
select * from employees
WHERE Department != 'HR';

#8. Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first) ?
SELECT * FROM Employees
WHERE HireDate BETWEEN '2019-01-01' AND '2022-12-31'
order by HireDate asc;




