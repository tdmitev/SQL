CREATE DATABASE car;

USE car;

CREATE TABLE car(
    registration_number VARCHAR(8) NOT NULL PRIMARY KEY,
    model VARCHAR(30) NOT NULL,
    colour VARCHAR(15) NOT NULL,
    year_production CHAR(4),
    price DECIMAL(9, 2) NOT NULL,
    name VARCHAR(30) NOT NULL,
    egn CHAR(10) NOT NULL,
    address VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL);

INSERT INTO car(registration_number, model, colour, year_production, price, name, egn, city, address)
VALUES ('СТ8763АТ', 'Ауди А8', 'черен', '2020', 155000, 'Тодор Валентинов', '9061970231', 'Стара Загора', 'М.М. Кусев 46'),
       ('PB2167КМ', 'Шкода Superb', 'сив', '2019', 98000,'Иван Сидеров', '5497846138', 'Пловдив', 'Славянса 78'),
       ('СО9763ВP', 'Мерцедес S120', 'бял', '2007', 4500,'Сашо Перев', '0349764582', 'София', 'Цар Калоян 64'),
       ('СТ9763ВP', 'БМВ X9', 'син', '2003', 3400,'Инастас Десидов', '6431978462', 'Стара Загора', 'Цар Симеон 12');

SELECT * FROM car;

SELECT model, year_production FROM car
WHERE ('СО%') OR  city LIKE 'София';

SELECT * FROM car
WHERE egn = :egn;

SELECT * FROM car
WHERE CAST(SUBSTR(egn, 1, 2) AS INTEGER) > 55;

SELECT * FROM car
WHERE price BETWEEN 3000 AND 5000;

SELECT * FROM car
ORDER BY price;

SELECT * FROM car
WHERE price < 4100 AND name LIKE 'И%';

SELECT * FROM car
WHERE colour = 'бял' OR colour = 'черен';
