# Employee_Management_System (SQL)

## Project Overview

The **Employee Management System** is a simple SQL-based database project designed to store, retrieve, and manage employee records. It includes tables for employees, departments, and salaries, ensuring efficient data organization and retrieval.

## Database Schema

The project consists of the following tables:

- **Employees**: Stores employee details such as name, email, phone, and department.
- **Departments**: Maintains department information.
- **Salaries**: Tracks employee salaries over time.

## Features

**Normalized Database Design** for efficiency.\
**Foreign Keys & Relationships** to maintain data integrity.\
**Sample Data Included** for easy setup and testing.\
**Predefined SQL Queries** for quick insights.

## Installation & Setup

1. Clone this repository:
   ```sh
   git clone https://github.com/jainanjaly/Employee_Management_System-SQL-.git
   ```
2. Open your SQL client and execute Employee_Management.sql.
3. Run queries to interact with the database.

## Example Query

Retrieve employee details along with their department:
```sql
SELECT E.EmployeeID, E.FirstName, E.LastName, E.Email, D.DepartmentName, E.Salary
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID;```


