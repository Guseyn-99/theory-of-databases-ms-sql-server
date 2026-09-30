CREATE TABLE Employees (
EmployeeID   INT PRIMARY KEY,
Name         NVARCHAR(100)  NOT NULL,
ManagerID    INT NULL REFERENCES Employees(EmployeeID),
DepartmentID INT NOT NULL,
Salary       DECIMAL(10,2)  NOT NULL,
HireDate     DATE           NOT NULL
);
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
Name         NVARCHAR(100) NOT NULL,
City         NVARCHAR(50)
);
CREATE TABLE Sales (
SaleID     INT PRIMARY KEY,
EmployeeID INT NOT NULL REFERENCES Employees(EmployeeID),
SaleDate   DATE NOT NULL,
Amount     DECIMAL(10,2) NOT NULL
);