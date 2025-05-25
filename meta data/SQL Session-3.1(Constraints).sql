-- ====================================================================
-- MySQL Constraints Detailed Explanation with Examples
-- ====================================================================
-- What are Constraints?
-- Constraints are rules that limit the type of data that can be inserted into a table. 
-- They ensure the integrity and accuracy of the data within the database
-- ================================================================
-- 1. NOT NULL Constraint
-- ================================================================
-- The NOT NULL constraint ensures that a column cannot have a NULL value.

-- Creating a table with a NOT NULL constraint
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,  -- FirstName cannot be NULL
    LastName VARCHAR(50),
    HireDate DATE
);

select * from employees;
drop table employees;
-- Inserting data into the table
INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate)
VALUES (1, 'John', 'Doe', '2024-08-20');

-- Trying to insert a NULL value into the FirstName column (will throw an error)
INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate)
VALUES (2, NULL, 'Smith', '2024-08-21');

-- ================================================================
-- 2. UNIQUE Constraint
-- ================================================================
-- The UNIQUE constraint ensures that all values in a column are unique.

-- Creating a table with a UNIQUE constraint
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) UNIQUE -- DepartmentName must be unique
);

-- Inserting data into the table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'HR'), (2, 'IT');

-- Trying to insert a duplicate value into the DepartmentName column (will throw an error)
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (3, 'HR');  -- Duplicate value

-- ================================================================
-- 3. PRIMARY KEY Constraint
-- ================================================================
-- The PRIMARY KEY constraint uniquely identifies each record in a table.

-- Creating a table with a PRIMARY KEY constraint
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,   -- Primary Key on ProjectID
    ProjectName VARCHAR(100)
);


-- Inserting data into the table
INSERT INTO Projects (ProjectID, ProjectName)
VALUES (1, 'ERP Development'), (2, 'Website Redesign');

-- Trying to insert a duplicate ProjectID (will throw an error)
INSERT INTO Projects (ProjectID, ProjectName)
VALUES (1, 'Mobile App Development');

-- ================================================================
-- 4. FOREIGN KEY Constraint
-- ================================================================
-- The FOREIGN KEY constraint is used to link two tables together.

-- Creating the parent table
CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(50)
);

drop table Managers,Teams;
-- Creating the child table with a FOREIGN KEY constraint
CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(50),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Managers(ManagerID)
);

-- Inserting data into the parent table
INSERT INTO Managers (ManagerID, ManagerName)
VALUES (1, 'Alice'), (2, 'Bob');

-- Inserting data into the child table
INSERT INTO Teams (TeamID, TeamName, ManagerID)
VALUES (1, 'Development', 1), (2, 'Marketing', 2);

-- Trying to insert a record with a ManagerID that doesn't exist in the parent table (will throw an error)
-- INSERT INTO Teams (TeamID, TeamName, ManagerID)
-- VALUES (3, 'Sales', 3);  -- ManagerID 3 doesn't exist

-- ================================================================
-- 5. CHECK Constraint
-- ================================================================
-- The CHECK constraint ensures that all values in a column satisfy a specific condition.

-- Creating a table with a CHECK constraint
CREATE TABLE Salaries (
    EmployeeID INT PRIMARY KEY,
    Salary DECIMAL(10, 2) CHECK (Salary >= 0) -- Salary must be non-negative
);

create table student(
student_name varchar(30) not null,
age int check(age<18));

insert into student values ('student1',18);

-- Inserting data into the table
INSERT INTO Salaries (EmployeeID, Salary)
VALUES (1, 50000.00);

-- Trying to insert a negative salary (will throw an error)
INSERT INTO Salaries (EmployeeID, Salary)
VALUES (2, 0.00);  -- Negative salary not allowed

select * from salaries;

-- ================================================================
-- 6. DEFAULT Constraint
-- ================================================================
-- The DEFAULT constraint provides a default value for a column when none is specified.

-- Creating a table with a DEFAULT constraint
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE DEFAULT (CURRENT_DATE) -- Default to current date
);

-- Inserting data without specifying OrderDate
INSERT INTO Orders (OrderID)
VALUES (1);

insert into orders values(2, '2024-08-11');

select * from orders;

-- ================================================================
-- 7. AUTO_INCREMENT Constraint
-- ================================================================
-- The AUTO_INCREMENT constraint automatically generates a unique number when a new record is inserted.

-- Creating a table with an AUTO_INCREMENT column
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,  -- Auto-incremented ProductID
    ProductName VARCHAR(100)
);

truncate products;
alter table products
auto_increment = 10;

-- Inserting data into the table
INSERT INTO Products (ProductName)
VALUES ('Laptop'), ('Smartphone');

insert into products values(100,'sample_product');


select * from products;
-- ================================================================
-- 8. ENUM Constraint
-- ================================================================
-- The ENUM constraint restricts a column to have one of several predefined values.

-- Creating a table with an ENUM column
CREATE TABLE Statuses (
    StatusID INT PRIMARY KEY,
    Status ENUM('Active', 'Inactive', 'Pending')  -- Allowed values: 'Active', 'Inactive', 'Pending'
);

-- Inserting data into the table
INSERT INTO Statuses (StatusID, Status)
VALUES (1, 'active');

-- Trying to insert a value not defined in the ENUM (will throw an error)
-- INSERT INTO Statuses (StatusID, Status)
-- VALUES (2, 'Unknown');  -- Invalid value

-- ================================================================
-- 9. SET Constraint
-- ================================================================
-- The SET constraint allows a column to have multiple predefined values.

-- Creating a table with a SET column
CREATE TABLE EmployeeSkills (
    EmployeeID INT PRIMARY KEY,
    Skills SET('Python', 'SQL', 'Java', 'JavaScript')  -- Allowed values: 'Python', 'SQL', 'Java', 'JavaScript'
);

-- Inserting data into the table
INSERT INTO EmployeeSkills (EmployeeID, Skills)
VALUES (1, 'Python,SQL'),  -- Employee has both Python and SQL skills
       (2, 'Java');        -- Employee has Java skill only
       
select * from EmployeeSkills;

-- Trying to insert a value not defined in the SET (will throw an error)
-- INSERT INTO EmployeeSkills (EmployeeID, Skills)
-- VALUES (3, 'Python,PHP');  -- 'PHP' is not an allowed value

