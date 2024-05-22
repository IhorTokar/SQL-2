USE CulinaryForum;
-- ������� ����� � ������� Roles
INSERT INTO Roles (role_name) VALUES ('Admin'), ('User'), ('Guest');
GO

-- ������� ��������� �����������
INSERT INTO Users (username, email, password_hash, role_id)
VALUES ('newuser', 'newuser@example.com', 'hashed_password', 2);
GO

-- ������� ��������� �����������
UPDATE Users
SET email = 'updateduser@example.com'
WHERE username = 'newuser';
GO

-- �������� ������������ � ���� �����
SELECT user_id, username, email, created_at, updated_at
FROM Users;
GO
