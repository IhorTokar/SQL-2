USE CulinaryForum;
-- Вставка даних у таблицю Roles
INSERT INTO Roles (role_name) VALUES ('Admin'), ('User'), ('Guest');
GO

-- Приклад додавання користувача
INSERT INTO Users (username, email, password_hash, role_id)
VALUES ('newuser', 'newuser@example.com', 'hashed_password', 2);
GO

-- Приклад оновлення користувача
UPDATE Users
SET email = 'updateduser@example.com'
WHERE username = 'newuser';
GO

-- Перевірка користувачів і їхніх ролей
SELECT user_id, username, email, created_at, updated_at
FROM Users;
GO
