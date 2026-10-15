USE CompanyDB;
GO

-- Отделы
INSERT INTO Departments (DepartmentName) VALUES
('IT-отдел'),
('Бухгалтерия'),
('Отдел кадров'),
('Маркетинг');

-- Должности
INSERT INTO Positions (PositionTitle, DepartmentId) VALUES
('Программист', 1),
('Бухгалтер', 2),
('HR-специалист', 3),
('Маркетолог', 4);

-- Сотрудники
INSERT INTO Employees (FullName, PositionId, HireDate) VALUES
('Иванов Иван', 1, '2024-01-15'),
('Петрова Анна', 2, '2023-06-01'),
('Сидоров Петр', 3, '2024-03-10'),
('Смирнова Елена', 4, '2024-05-20');

-- Проекты
INSERT INTO Projects (ProjectName, EmployeeId, StartDate) VALUES
('Разработка CRM', 1, '2025-01-10'),
('Годовая отчетность', 2, '2025-02-01'),
('Найм сотрудников', 3, '2025-03-15'),
('Рекламная кампания', 4, '2025-04-01');

-- Логи (одиночная таблица)
INSERT INTO Logs (Message) VALUES
('Система запущена'),
('Пользователь вошел'),
('Ошибка подключения'),
('Данные сохранены');
GO
