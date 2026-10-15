CREATE DATABASE CompanyDB;
GO

USE CompanyDB;
GO

-- 1. Departments (главная таблица, на нее ссылаются другие)
CREATE TABLE Departments (
    DepartmentId INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(50) NOT NULL
);

-- 2. Positions (зависит от Departments)
CREATE TABLE Positions (
    PositionId INT PRIMARY KEY IDENTITY(1,1),
    PositionTitle NVARCHAR(50) NOT NULL,
    DepartmentId INT NOT NULL,
    CONSTRAINT FK_Positions_Departments FOREIGN KEY (DepartmentId)
        REFERENCES Departments(DepartmentId)
);

-- 3. Employees (зависит от Positions)
CREATE TABLE Employees (
    EmployeeId INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    PositionId INT NOT NULL,
    HireDate DATE NOT NULL,
    CONSTRAINT FK_Employees_Positions FOREIGN KEY (PositionId)
        REFERENCES Positions(PositionId)
);

-- 4. Projects (зависит от Employees)
CREATE TABLE Projects (
    ProjectId INT PRIMARY KEY IDENTITY(1,1),
    ProjectName NVARCHAR(100) NOT NULL,
    EmployeeId INT NOT NULL,
    StartDate DATE NOT NULL,
    CONSTRAINT FK_Projects_Employees FOREIGN KEY (EmployeeId)
        REFERENCES Employees(EmployeeId)
);

-- 5. Logs (не связана ни с одной таблицей - одиночная)
CREATE TABLE Logs (
    LogId INT PRIMARY KEY IDENTITY(1,1),
    Message NVARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO
