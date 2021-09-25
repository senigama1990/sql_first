INSERT INTO users (
    user_name,
    last_name,
    contact,
    gender
) VALUES
('Suxrob', 'Avezov', '998911364443', 1),
('Suxrob1', 'Avezov1', '998911364443', 1),
('Suxrob2', 'Avezov2', '998911364443', 1),
('Suxrob3', 'Avezov3', '998911364443', 2),
('Suxrob4', 'Avezov4', '998911364443', 2);

INSERT INTO foods(food_name, food_cost, food_img)VALUES('Burger', 10000, 'http://localhost:4000/imgs/foods.jpg');
INSERT INTO foods(food_name, food_cost, food_img)VALUES('Lavash', 10000, 'http://localhost:4000/imgs/foods.jpg');
INSERT INTO foods(food_name, food_cost, food_img)VALUES('Cheeseburger', 10000, 'http://localhost:4000/imgs/foods.jpg');

DELETE FROM foods;
DROP TABLE foods CASCADE;

INSERT INTO orders(food_id, user_id, count)VALUES(7, 2, 3);
INSERT INTO orders(food_id, user_id, count)VALUES(8, 1, 3);
INSERT INTO orders(food_id, user_id, count)VALUES(9, 2, 3);
