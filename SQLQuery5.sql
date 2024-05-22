INSERT INTO Users (username, email, password_hash, role_id) VALUES 
('user1', 'user1@example.com', 'password1', 2),
('user2', 'user2@example.com', 'password2', 2),
('user3', 'user3@example.com', 'password3', 2),
('chef1', 'chef1@example.com', 'password4', 2),
('guest1', 'guest1@example.com', 'password5', 2);

-- Вставка даних у таблицю Recipes
INSERT INTO Recipes (user_id, title, description, instructions) VALUES 
(1, 'Spaghetti Carbonara', 'Classic Italian pasta dish with bacon, eggs, and cheese.', '1. Cook pasta. 2. Fry bacon. 3. Mix eggs and cheese. 4. Combine all ingredients.'),
(2, 'Chicken Alfredo', 'Creamy pasta dish with grilled chicken and Alfredo sauce.', '1. Grill chicken. 2. Cook pasta. 3. Make Alfredo sauce. 4. Combine all ingredients.'),
(3, 'Vegetable Stir-Fry', 'Healthy stir-fry dish with mixed vegetables and tofu.', '1. Chop vegetables. 2. Fry tofu. 3. Stir-fry vegetables. 4. Combine all ingredients.'),
(4, 'Chocolate Cake', 'Decadent chocolate cake with rich frosting.', '1. Mix ingredients. 2. Bake cake. 3. Make frosting. 4. Decorate cake.'),
(5, 'Salad', 'Fresh salad with mixed greens, tomatoes, and vinaigrette dressing.', '1. Wash and chop vegetables. 2. Prepare dressing. 3. Toss all ingredients.');

-- Вставка даних у таблицю Ingredients
INSERT INTO Ingredients (name) VALUES 
('Spaghetti'),
('Bacon'),
('Eggs'),
('Parmesan cheese'),
('Chicken'),
('Fettuccine pasta'),
('Cream'),
('Butter'),
('Mixed vegetables'),
('Tofu'),
('Flour'),
('Sugar'),
('Cocoa powder'),
('Milk'),
('Lettuce'),
('Tomatoes'),
('Olive oil'),
('Vinegar');

-- Вставка даних у таблицю Recipe_Ingredients
INSERT INTO Recipe_Ingredients (recipe_id, ingredient_id, quantity) VALUES 
(1, 1, '200g'),
(1, 2, '100g'),
(1, 3, '2'),
(1, 4, '50g'),
(2, 5, '300g'),
(2, 6, '200g'),
(2, 7, '1 cup'),
(2, 8, '2 tbsp'),
(3, 9, '500g'),
(3, 10, '300g'),
(4, 11, '2 cups'),
(4, 12, '1 cup'),
(4, 13, '1 cup'),
(4, 14, '1 cup'),
(5, 15, '1 head'),
(5, 16, '2'),
(5, 17, '2 tbsp');