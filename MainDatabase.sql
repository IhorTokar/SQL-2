-- Створення бази даних
CREATE DATABASE CulinaryForum;
GO

-- Використання бази даних
USE CulinaryForum;
GO

-- Створення таблиці Roles
CREATE TABLE Roles (
    role_id INT PRIMARY KEY IDENTITY(1,1),  -- Автоматична генерація ID, починаючи з 1
    role_name VARCHAR(50) NOT NULL
);
GO

-- Створення таблиці Users
CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY(1,1), 
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (role_id) REFERENCES Roles(role_id)
);
GO

-- Створення тригера для вставки нових записів у таблицю Users
CREATE TRIGGER trg_InsertUsers
ON Users
AFTER INSERT
AS
BEGIN
    UPDATE Users
    SET created_at = GETDATE(),
        updated_at = GETDATE()
    WHERE user_id IN (SELECT user_id FROM inserted);
END;
GO

-- Створення тригера для оновлення записів у таблицю Users
CREATE TRIGGER trg_UpdateUsers
ON Users
AFTER UPDATE
AS
BEGIN
    UPDATE Users
    SET updated_at = GETDATE()
    WHERE user_id IN (SELECT user_id FROM inserted);
END;
GO
