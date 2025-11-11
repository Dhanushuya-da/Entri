-- To create Employee Database
CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE Employees(
Employee_id int,
Employee_name varchar(50),
Gender ENUM ('M','F'),
Age int,
Hire_Date date,
Designation varchar(100),
Department_id int,
Location_id int,
Salary decimal(10,2)
);

CREATE TABLE Department(
Department_id int,
Department_Name varchar(100)
);

CREATE TABLE Location(
Location_id int,
Location varchar(30)
);

-- ALTER TABLE- ADD
ALTER TABLE EMPLOYEES
ADD COLUMN Email varchar(30); 

-- ALTER TABLE - MODIFY
ALTER TABLE EMPLOYEES
MODIFY COLUMN Designation varchar(200);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN Hire_Date to Date_of_Joining ;

RENAME TABLE department to Department_Info ;

RENAME TABLE Location to Locations ;

TRUNCATE TABLE EMPLOYEES ;

DROP TABLE EMPLOYEES ;

DROP DATABASE EMPLOYEE ;

DROP DATABASE IF EXISTS EMPLOYEE ;

CREATE DATABASE EMPLOYEE ;

USE EMPLOYEE ;

CREATE TABLE Employee(
Employee_id INT PRIMARY KEY ,
Employee_Name VARCHAR (100) NOT NULL ,
Gender enum ('M','F')NOT NULL,
Age int NOT NULL CHECK (Age>0) ,
Hire_Date DATE NOT NULL,
Designation VARCHAR (100) NOT NULL,
Department_id INT NOT NULL,
Location_id INT NOT NULL,
Salary DECIMAL(10,2) NOT NULL CHECK (Salary > 0),
FOREIGN KEY (Department_id)REFERENCES Department(Department_id),
FOREIGN KEY (Location_id)REFERENCES Location(Location_id)
);

CREATE TABLE Department(
Department_id INT PRIMARY KEY,
Department_Name VARCHAR(30) NOT NULL
);

CREATE TABLE Location(
Location_id INT PRIMARY KEY,
Location_Name VARCHAR(30) NOT NULL
);

DROP DATABASE EMPLOYEE;

CREATE DATABASE EMPLOYEE ;

USE EMPLOYEE ;

CREATE TABLE Employees(
Employee_id INT PRIMARY KEY ,
Employee_Name VARCHAR (100) NOT NULL ,
Gender enum ('M','F')NOT NULL,
Age int NOT NULL CHECK (Age>0) ,
Hire_Date DATE NOT NULL,
Designation VARCHAR (100) NOT NULL,
Department_id INT NOT NULL,
Location_id INT NOT NULL,
Salary DECIMAL(10,2) NOT NULL CHECK (Salary > 0)
);

CREATE TABLE Department(
Department_id INT PRIMARY KEY,
Department_Name VARCHAR(30) NOT NULL
);

CREATE TABLE Location(
Location_id INT PRIMARY KEY,
Location_Name VARCHAR(30) NOT NULL
);

ALTER TABLE Department 
MODIFY COLUMN Department_id INT UNIQUE ;

ALTER TABLE Location 
MODIFY COLUMN Location_id INT NOT NULL  AUTO_INCREMENT ;

ALTER TABLE employees
MODIFY COLUMN Employee_id INT UNIQUE ;

ALTER TABLE Employees
ADD CONSTRAINT check_gender CHECK (Gender IN ('M', 'F'));

ALTER TABLE Employees
ADD CONSTRAINT check_age CHECK (Age >= 18);

ALTER TABLE Employees
ALTER COLUMN Hire_Date SET DEFAULT (CURRENT_DATE );

-- Link department_id in employees to department table
ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id) REFERENCES Department(department_id);

-- Link location_id in employees to location table
ALTER TABLE Employees
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id) REFERENCES Location(location_id);

