-- ��������� ���� �����
CREATE DATABASE CulinaryForum;
GO

-- ������������ ���� �����
USE CulinaryForum;
GO

-- ��������� ������� Roles
CREATE TABLE Roles (
    role_id INT PRIMARY KEY IDENTITY(1,1),  -- ����������� ��������� ID, ��������� � 1
    role_name VARCHAR(50) NOT NULL
);
GO

-- ��������� ������� Users
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

-- ��������� ������� ��� ������� ����� ������ � ������� Users
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

-- ��������� ������� ��� ��������� ������ � ������� Users
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

