-- Exercise 1: Creating Database and Tables with Output

-- 1. Create a new database
CREATE DATABASE employee;
-- Output:
-- Query OK, 1 row affected (0.01 sec)

-- 2. Use the newly created database
USE employee;
-- Output:
-- Database changed

-- 3. Create the Employee table
CREATE TABLE Employee (
    empno INT PRIMARY KEY,
    ename VARCHAR(30),
    job VARCHAR(10),
    managerid INT,
    hiredate DATE,
    salary INT,
    commision INT,
    deptno INT
);
-- Output:
-- Query OK, 0 rows affected (0.04 sec)

-- 4. Describe the Employee table
-- Command:
-- DESCRIBE Employee;
-- Expected Output:
-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | empno     | int         | NO   | PRI | NULL    |       |
-- | ename     | varchar(30) | YES  |     | NULL    |       |
-- | job       | varchar(10) | YES  |     | NULL    |       |
-- | managerid | int         | YES  |     | NULL    |       |
-- | hiredate  | date        | YES  |     | NULL    |       |
-- | salary    | int         | YES  |     | NULL    |       |
-- | commision | int         | YES  |     | NULL    |       |
-- | deptno    | int         | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+

-- 5. Create the Department table
CREATE TABLE Department (
    deptno INT PRIMARY KEY,
    deptname VARCHAR(15),
    location VARCHAR(10)
);
-- Output:
-- Query OK, 0 rows affected (0.02 sec)

-- 6. Describe the Department table
-- Command:
-- DESCRIBE Department;
-- Expected Output:
-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptno   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(15) | YES  |     | NULL    |       |
-- | location | varchar(10) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+

-- 7. Create the SalaryGrade table
CREATE TABLE SalaryGrade (
    grade INT PRIMARY KEY,
    lowsalary INT,
    highsalary INT
);
-- Output:
-- Query OK, 0 rows affected (0.02 sec)

-- 8. Describe the SalaryGrade table
-- Command:
-- DESCRIBE SalaryGrade;
-- Expected Output:
-- +------------+------+------+-----+---------+-------+
-- | Field      | Type | Null | Key | Default | Extra |
-- +------------+------+------+-----+---------+-------+
-- | grade      | int  | NO   | PRI | NULL    |       |
-- | lowsalary  | int  | YES  |     | NULL    |       |
-- | highsalary | int  | YES  |     | NULL    |       |
-- +------------+------+------+-----+---------+-------+
