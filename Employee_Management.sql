-- Employee Management System SQL Project

-- Creating the database
CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;

-- Creating the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    HireDate DATE,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Creating the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50) UNIQUE
);

-- Creating the Salaries table
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    SalaryAmount DECIMAL(10,2),
    SalaryDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Inserting sample data
INSERT INTO Departments (DepartmentName) VALUES ('HR'), ('IT'), ('Finance');
INSERT INTO Employees (FirstName, LastName, Email, Phone, HireDate, DepartmentID, Salary) VALUES 
('John', 'Doe', 'john.doe@example.com', '1234567890', '2022-01-15', 1, 55000.00),
('Jane', 'Smith', 'jane.smith@example.com', '9876543210', '2021-05-20', 2, 75000.00);

INSERT INTO Salaries (EmployeeID, SalaryAmount, SalaryDate) VALUES 
(1, 55000.00, '2023-01-01'),
(2, 75000.00, '2023-01-01');

-- Query to fetch employee details with department name
SELECT E.EmployeeID, E.FirstName, E.LastName, E.Email, D.DepartmentName, E.Salary 
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID;

